//
//  PageModel.swift
//  AIFit
//
//  Created by Manas Salimzhan on 25.07.2023.
//

import Foundation

struct Page: Identifiable, Equatable {
    let id = UUID()
    var name : String
    var description: String
    var imageURL: String
    var tag: Int
    
    static var samplePage  = Page(name: "Title example", description: "This is a sample description for debugging", imageURL: "arnold", tag: 0)
    
    static var samplePages: [Page] = [
        Page(name: "Welcome to AIFIt", description: "The best app with personal coach", imageURL: "arnold", tag: 0),
        Page(name: "Upgrade your skills with us", description: "You have a more type of exercises for any type of body", imageURL: "chest", tag: 1),
        Page(name: "Challenges for discipline", description: "You have a challenges for upgrade themselves", imageURL: "chest", tag: 2)
    ]
}
