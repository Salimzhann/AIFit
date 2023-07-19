//
//  ChatMessagesEntity+CoreDataProperties.swift
//  AIFit
//
//  Created by Manas Salimzhan on 19.07.2023.
//
//

import Foundation
import CoreData


extension ChatMessageEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ChatMessageEntity> {
        return NSFetchRequest<ChatMessageEntity>(entityName: "ChatMessageEntity")
    }

    @NSManaged public var id: String?
    @NSManaged public var content: String?
    @NSManaged public var sender: String?
    @NSManaged public var dataCreated: Date?

}

extension ChatMessageEntity : Identifiable {

}
