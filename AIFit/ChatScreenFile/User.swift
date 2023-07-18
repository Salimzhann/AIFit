//
//  User.swift
//  AIFit
//
//  Created by Manas Salimzhan on 10.07.2023.
//

import Foundation

struct User: Hashable {
    var name: String
    var avatar: String
    var isCurrentUser: Bool = false
}
