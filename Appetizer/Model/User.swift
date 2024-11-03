//
//  User.swift
//  Appetizer
//
//  Created by Hassan Abdulwahab on 02/11/2024.
//

import Foundation

struct User: Codable {
     var firstName: String = ""
     var lastName: String = ""
     var email: String = ""
     var birthday = Date()
     var extraNapkins: Bool = false
     var frequentRefills: Bool = false
}
