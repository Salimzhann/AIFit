//
//  ChatScreen.swift
//  AIFit
//
//  Created by Manas Salimzhan on 08.06.2023.
//



import SwiftUI
import Combine
import UIKit
import CoreData

struct ViewHeightKey: PreferenceKey {
    static var defaultValue: CGFloat { 0 }
    static func reduce(value: inout Value, nextValue: () -> Value) {
        value = value + nextValue()
    }
}

struct ChatScreen: View {
    @State private var isTyping: Bool = false
    @State var chatMessages: [ChatMessage] = ChatMessage.sampleMessages
    @State var messageText: String = ""
    @State var cancellables = Set<AnyCancellable>()
    @State var listCount: Int = 0
    @State var scrollToBottom: Bool = false
    @State var textViewValue = String()
    @State var textViewHeight: CGFloat = 50.0
    @State private var editorHeight: CGFloat = 40
    @State private var text = "Testing text"
    @State private var isMenuOpen = false
    private var maxHeight: CGFloat = 250
    @State private var isEditing: Bool = false
    @FetchRequest(entity: ChatMessageEntity.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \ChatMessageEntity.dataCreated, ascending: true)])
    private var fetchedChatMessages: FetchedResults<ChatMessageEntity>
    
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack {
                    Image("coach")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 2))
                        .shadow(radius: 3)
                    
                    VStack(alignment: .leading) {
                        Text("Фитнес Тренер")
                            .font(.headline)
                            .fontWeight(.bold)
                        Text("Online")
                            .font(.subheadline)
                            .foregroundColor(.blue)
                    }
                    .padding(.leading, 10)
                    
                    Spacer()
                }
                .padding()
                
                ScrollViewReader { scrollViewProxy in
                    ScrollView(showsIndicators: false) {
                        VStack {
                            ForEach(chatMessages, id: \.id) { message in
                                messageView(message: message)
                                    .id(message.id)
                                    .font(.system(size: 17))
                            }
                            .onChange(of: chatMessages.count) { _ in
                                if scrollToBottom {
                                    scrollToLastMessage(scrollViewProxy: scrollViewProxy)
                                }
                            }
                        }
                    }.onAppear {
                        fetchChatMessages()
                        scrollToLastMessage(scrollViewProxy: scrollViewProxy)
                    }
                    .onAppear {
                        scrollToLastMessage(scrollViewProxy: scrollViewProxy)
                    }
                    .onReceive(NotificationCenter.default.publisher(for: UIResponder.keyboardWillShowNotification)) { _ in
                        scrollToBottom = true
                    }
                    .onReceive(NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)) { _ in
                        scrollToBottom = false
                    }
                }
                .onTapGesture {
                    hideKeyboard()
                }
                
                if isTyping {
                    withAnimation(.easeInOut) {
                        HStack {
                            Text("Тренер печатает...")
                                .foregroundColor(.white)
                            Spacer()
                            ProgressView()
                                .progressViewStyle(CircularProgressViewStyle())
                        }
                        .padding(.horizontal)
                    }
                }

                
                HStack {
                    ResizableTextView(text: $textViewValue, height: $textViewHeight, placeholderText: "Type a message")
                        .foregroundColor(.white)
                        .frame(height: textViewHeight < 160 ? self.textViewHeight : 160)
                        .cornerRadius(16)
                    
                    Button(action: {
                        sendMessage()
                    }) {
                        Image(systemName: "paperplane.fill")
                            .font(.system(size: 20))
                            .frame(width: 40, height: 40)
                            .background(Color.black)
                            .foregroundColor(.blue)
                            .clipShape(Circle())
                    }
                }
            }
            .padding()
        }
    }

    
    func messageView(message: ChatMessage) -> some View {
        HStack {
            if message.sender == .user { Spacer() }
            
            Text(message.content)
                .foregroundColor(message.sender == .user ? .white : .white)
                .padding()
                .background(message.sender == .user ? Color.blue : Color.gray.opacity(0.3))
                .cornerRadius(16)
                .fixedSize(horizontal: false, vertical: true)
            
            if message.sender == .gpt { Spacer() }
        }
    }
    
    func fetchConversationID(completion: @escaping (String?) -> Void) {
        guard let url = URL(string: "https://fastapi-3zy6.onrender.com/chat/") else {
            print("Invalid URL")
            completion(nil)
            return
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error: \(error)")
                completion(nil)
                return
            }
            
            guard let data = data else {
                print("No data received")
                completion(nil)
                return
            }
            
            if let responseString = String(data: data, encoding: .utf8) {
                if responseString.contains("detail: Method Not Allowed") {
                    print("Invalid response: \(responseString)")
                    completion(nil)
                } else {
                    let cleanedResponseString = responseString.replacingOccurrences(of: "\"", with: "")
                    completion(cleanedResponseString)
                }
            } else {
                print("Failed to convert data to string")
                completion(nil)
            }
        }.resume()
    }

    private func fetchChatMessages() {
        chatMessages = fetchedChatMessages.map { messageEntity in
            guard let id = messageEntity.id,
                  let content = messageEntity.content,
                  let dataCreated = messageEntity.dataCreated,
                  let senderString = messageEntity.sender else {
                // Handle the error or return a default value
                return ChatMessage(id: "", content: "", dataCreated: Date(), sender: .user)
            }
            
            let sender: MessageSender = senderString == "gpt" ? .gpt : .user
            
            return ChatMessage(id: id, content: content, dataCreated: dataCreated, sender: sender)
        }
    }



    func sendMessage() {
        let trimmedMessage = textViewValue.trimmingCharacters(in: .whitespacesAndNewlines)
        if !trimmedMessage.isEmpty {
            let myMessage = ChatMessage(id: UUID().uuidString, content: trimmedMessage, dataCreated: Date(), sender: .user)
            chatMessages.append(myMessage)
            textViewValue = "" // Clear the input text view

            // Show typing animation
            isTyping = true
            let prompt = trimmedMessage
            let url = URL(string: "https://fastapi-3zy6.onrender.com/chat/")!
            let requestData = ["prompt": prompt]

            let session = URLSession.shared
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.setValue("application/json", forHTTPHeaderField: "Accept")

            do {
                let requestData = try JSONSerialization.data(withJSONObject: requestData, options: [])
                request.httpBody = requestData
            } catch {
                print("Error encoding JSON: \(error)")
                return
            }

            URLSession.shared.dataTask(with: request) { data, response, error in
                if let error = error {
                    print("Error: \(error)")
                    return
                }

                guard let data = data else {
                    print("No data received")
                    return
                }

                if let responseString = String(data: data, encoding: .utf8) {
                    // Remove quotes from the response string
                    let cleanedResponseString = responseString.replacingOccurrences(of: "\"", with: "")
                                                            .replacingOccurrences(of: "\\n", with: "\n")

                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        // Hide typing animation and display bot message
                        isTyping = false
                        let botMessage = ChatMessage(id: UUID().uuidString, content: cleanedResponseString, dataCreated: Date(), sender: .gpt)
                        chatMessages.append(botMessage)
                    }
                    let newChatMessageEntity = ChatMessageEntity(context: CoreDataStack.shared.viewContext)
                    newChatMessageEntity.id = myMessage.id
                    newChatMessageEntity.content = myMessage.content
                    newChatMessageEntity.dataCreated = myMessage.dataCreated
                    newChatMessageEntity.sender = myMessage.sender == .gpt ? "gpt" : "user"
                    do {
                        try CoreDataStack.shared.viewContext.save()
                    } catch {
                        print("Failed to save new chat message: \(error)")
                    }
                } else {
                    print("Failed to convert response data to string")
                }
            }.resume()
        } else {
            print("oooooops...")
        }
    }


        
        
        
        func scrollToLastMessage(scrollViewProxy: ScrollViewProxy) {
            withAnimation {
                scrollViewProxy.scrollTo(chatMessages.last?.id, anchor: .bottom)
            }
        }
        
        private func hideKeyboard() {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
    
    struct ChatScreen_Previews: PreviewProvider {
        static var previews: some View {
            ChatScreen()
    }
}



struct ChatMessage {
    let id: String
    let content: String
    let dataCreated: Date
    let sender: MessageSender
}

enum MessageSender {
    case user
    case gpt
}

extension ChatMessage {
    
    static let sampleMessages = [
        ChatMessage(id: UUID().uuidString, content: "Привет, я твой личный тренер, чем я могу помочь?", dataCreated: Date(), sender: .gpt)
    ]
}
class CoreDataStack {
    static let shared = CoreDataStack()

    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "YourDataModelName")
        container.loadPersistentStores { _, error in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()

    var viewContext: NSManagedObjectContext {
        return persistentContainer.viewContext
    }

    private init() {}
}
