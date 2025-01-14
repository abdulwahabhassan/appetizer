//
//  AppetizerApp.swift
//  Appetizer
//
//  Created by Hassan Abdulwahab on 24/09/2024.
//

import SwiftUI

@main
struct AppetizerApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
