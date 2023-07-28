//
//  SimpleToDoView.swift
//  AIFit
//
//  Created by Manas Salimzhan on 26.07.2023.
//

import SwiftUI

enum Priority: String , Identifiable, CaseIterable {
    var id: UUID{
        return UUID()
    }
    case low = "Низкая"
    case medium = "Средняя"
    case high = "Высокая"
}
extension Priority {
    var tile: String{
        switch self{
        case .low:
            return "Низкая"
        case .medium:
            return "Средняя"
        case .high:
            return "Высокая"
        }
    }
}


struct SimpleToDoView: View {
    @State private var title: String = ""
    @State private var selectedPriority: Priority = .medium
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(entity: Task.entity(), sortDescriptors: [NSSortDescriptor(key: "dateCreated", ascending: false)]) private var allTask: FetchedResults<Task>
    
    private func saveTask() {
        do{
            let task = Task(context: viewContext)
            task.title = title
            task.priority = selectedPriority.rawValue
            task.dateCreated = Date()
            try viewContext.save()
        } catch {
            print(error.localizedDescription)
        }
    }
    private func styleForPriority(_ value: String) -> Color {
        let priority = Priority(rawValue: value)
        
        switch priority{
        case .low:
            return Color.green
        case .medium:
            return Color.yellow
        case .high:
            return Color.red
        default:
            return .black
        }
    }
    private func updateTask(_ task: Task) {
        task.isFavorite = !task.isFavorite
        
        do {
            try viewContext.save()
        } catch {
            print(error.localizedDescription)
        }
    }
    private func deleteTask(at offsets:  IndexSet){
        offsets.forEach { index in
            let task = allTask[index]
            viewContext.delete(task)
            
            do {
                try viewContext.save()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    var body: some View {
        NavigationView{
            
            VStack{
                TextField("Пишите задание",text: $title)
                    .textFieldStyle(.roundedBorder)
                    .gesture(DragGesture().onChanged { _ in
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                    })
                Text("Важность:")
                Picker("Priority", selection: $selectedPriority) {
                    ForEach(Priority.allCases) {priority in
                        Text(priority.tile).tag(priority)
                    }
                }.pickerStyle(.segmented)
                HStack{
                    Circle()
                        .fill(.green)
                        .frame(width: 15, height: 15)
                        .padding(.leading,50)
                    Spacer()
                    Circle()
                        .fill(.yellow)
                        .frame(width: 15, height: 15)
                    Spacer()
                    Circle()
                        .fill(.red)
                        .frame(width: 15, height: 15)
                        .padding(.trailing,50)
                }
                
                Button(action:{
                    if !title.isEmpty{
                        saveTask()
                    }
                    title = ""
                }){
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: 40)
                            .foregroundColor(.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        Text("Добавить")
                            .foregroundColor(.white)
                            .bold()
                    }
                }
                List{
                    
                    ForEach(allTask) { task in
                        HStack{
                            Circle()
                                .fill(styleForPriority(task.priority!))
                                .frame(width: 15, height: 15)
                            Spacer().frame(width: 20)
                            Text(task.title ?? "")
                                .foregroundColor(.white)
                            Spacer()
                            
                            Image(systemName: task.isFavorite ? "heart.fill" : "heart")
                                .foregroundColor(.red)
                                .onTapGesture {
                                    updateTask(task)
                                }
                        }
                    }.onDelete(perform: deleteTask)
                        .simultaneousGesture(DragGesture().onChanged { _ in
                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        })
                }
                
                
                Spacer()
            }
            .gesture(DragGesture().onChanged { _ in
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                })
            .padding()
            .navigationTitle("Все задачи")
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    private func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}

struct SimpleToDoView_Previews: PreviewProvider {
    static var previews: some View {
        let persistentContainer = CoreDataManager.shared.persistentContainer
        SimpleToDoView().environment(\.managedObjectContext, persistentContainer.viewContext)
    }
}
