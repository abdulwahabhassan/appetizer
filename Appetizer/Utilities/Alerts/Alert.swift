//
//  Alert.swift
//  Appetizer
//
//  Created by Hassan Abdulwahab on 10/10/2024.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidUrl = AlertItem(title: Text("Server error"), message: Text("Issue connecting to server."), dismissButton: .default(Text("Ok")))
    static let invalidResponse = AlertItem(title: Text("Server error"), message: Text("Invalid response from server, try again later or contact support."), dismissButton: .default(Text("Ok")))
    static let invalidData = AlertItem(title: Text("Server error"), message: Text("Data received from server is invalid, contact support."), dismissButton: .default(Text("Ok")))
    static let unableToComplete = AlertItem(title: Text("Server error"), message: Text("Unable to complete request."), dismissButton: .default(Text("Ok")))
    static let invalidForm = AlertItem(title: Text("Invalid form"), message: Text("Please ensure all fields in the form have been filled out."), dismissButton: .default(Text("Ok")))
    static let invalidEmail = AlertItem(title: Text("Invalid email"), message: Text("Please ensure your email is correct."), dismissButton: .default(Text("Ok")))
    static let userSaveSuccess = AlertItem(title: Text("Profile saved"), message: Text("Profile information successfully saved."), dismissButton: .default(Text("Ok")))
    static let invalidUserData = AlertItem(title: Text("Profile error"), message: Text("Error saving or retrieving profile."), dismissButton: .default(Text("Ok")))
}
