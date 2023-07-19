//
//  ChatMessageEntity+CoreDataProperties.swift
//  AIFit
//
//  Created by Manas Salimzhan on 19.07.2023.
//
//

import Foundation
import CoreData


extension ChatMessageEntity {
    static func create(from message: ChatMessage, in context: NSManagedObjectContext) -> ChatMessageEntity {
        let entity = ChatMessageEntity(context: context)
        entity.id = message.id
        entity.content = message.content
        entity.dataCreated = message.dataCreated
        entity.sender = message.sender == .gpt ? "gpt" : "user"
        return entity
    }
    func toChatMessage() -> ChatMessage {
            let sender: MessageSender = self.sender == "gpt" ? .gpt : .user
            return ChatMessage(id: id ?? "", content: content ?? "", dataCreated: dataCreated ?? Date(), sender: sender)
        }
    }
