//
//  SwiftUIView.swift
//  AIFit
//
//  Created by Manas Salimzhan on 09.07.2023.
//
import Combine
import SwiftUI

struct Challenges: View {
    @State private var showAlert = false
    @AppStorage("checkDay") var checkday: Int = 0
    @AppStorage("nextday") var days: Int = 0
    @AppStorage("incDay") var hasIncrementedCheckday: Bool = false
    @State var null = MainPage()
    @State var titles: String
    @State var sd:  CGFloat
    @State var isCompletedDays: [Bool] = UserDefaults.standard.array(forKey: "isCompletedDays") as? [Bool] ?? [false, false, false, false, false, false, false]
    @State private var cancellables = Set<AnyCancellable>()
    @State private var isPulsating = false // New state variable
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .frame(height: 218)
                .foregroundColor(Color(.darkGray))
                .opacity(0.3)
            VStack {
                HStack{
                    Text(titles)
                        .font(.system(size: 23))
                        .padding(.trailing, sd)
                        .foregroundColor(.white)
                        .bold()
                    Button(action: {
                        showAlert = true
                    }){
                        Image(systemName: "trash")
                            .resizable()
                            .foregroundColor(.red)
                            .frame(width: 20,height: 20)
                    }.alert(isPresented: $showAlert) {
                        Alert(
                            title: Text("Обратите внимание"),
                            message: Text("Вы уверены что хотите удалить процесс?"),
                            primaryButton: .cancel(Text("Назад")), // "Cancel" button on the left
                            secondaryButton: .destructive(Text("Да")) {
                                UserDefaults.standard.set(false, forKey: "IsActive")
                                UserDefaults.standard.set(false, forKey: "IsActive1")
                                UserDefaults.standard.set(false, forKey: "IsActive2")
                                UserDefaults.standard.set(false, forKey: "IsActive3")
                                UserDefaults.standard.set(false, forKey: "IsActive4")
                                isCompletedDays = [false,false,false,false,false,false,false]
                                UserDefaults.standard.set(isCompletedDays,forKey: "isCompletedDays")
                                UserDefaults.standard.set(false,forKey: "incDay")
                                UserDefaults.standard.set(0,forKey: "checkDay")
                                UserDefaults.standard.set(0,forKey: "nextday")
                                print("Sure button tapped")
                            } // "Sure" button on the right
                        )
                    }
                }
                
                Text("\(checkday)/7 дней")
                    .foregroundColor(.blue)
                    .font(.system(size: 25))
                    .bold()
                    .padding(.trailing, 220)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .frame(width: 300, height: 20)
                        .foregroundColor(.gray)
                    
                    HStack {
                        ForEach(0..<7) { index in
                            let shouldPulsate = !isCompletedDays[index] && isPulsating && index == days
                            circles(prog: index + 1)
                                .foregroundColor(isCompletedDays[index] ? .blue : Color(.darkGray))
                                .scaleEffect(shouldPulsate ? 1.2 : 1.0) // Apply scale effect conditionally
                                .animation(shouldPulsate ? Animation.easeInOut(duration: 1.0).repeatForever() : .default) // Add animation conditionally
                        }
                    }
                }
                
                Button(action: {
                    isCompletedDays[days] = true
                    UserDefaults.standard.set(isCompletedDays, forKey: "isCompletedDays")
                    if isCompletedDays[days] && !hasIncrementedCheckday {
                        checkday += 1
                        UserDefaults.standard.set(true ,forKey: "incDay")
                        UserDefaults.standard.set(checkday, forKey: "checkDay")
                    }
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 17)
                            .frame(width: 180, height: 40)
                            .foregroundColor(.white)
                        
                        Text(isCompletedDays[days] ? "Выполнено" : "Завершить день \(days+1)")
                            .foregroundColor(.black)
                        
                    }
                })
            }
        }
        .onAppear {
            isPulsating = true // Start the pulsating animation when the view appears
        }
        .onDisappear {
            isPulsating = false // Stop the pulsating animation when the view disappears
        }
    }
}

struct circles: View {
    var prog: Int
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 40, height: 40)
            
            Text("\(prog)")
                .foregroundColor(.white)
        }
    }
}
