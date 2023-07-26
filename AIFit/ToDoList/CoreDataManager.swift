//
//  CoreDataManage.swift
//  AIFit
//
//  Created by Manas Salimzhan on 25.07.2023.
//

import Foundation
import CoreData

class CoreDataManager {
    
    let persistentContainer: NSPersistentContainer
    static let shared: CoreDataManager = CoreDataManager()
    
    private init(){
        persistentContainer = NSPersistentContainer(name: "ToDoList")
        persistentContainer.loadPersistentStores {description , error in
            if let error = error {
                fatalError("Unable to initialize  Core Data \(error)")
                
            }
        }
    }
}
