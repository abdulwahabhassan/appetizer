//
//  Order.swift
//  Appetizer
//
//  Created by Hassan Abdulwahab on 02/11/2024.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    var total: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func remove(_ atOffsets: IndexSet) {
        items.remove(atOffsets: atOffsets)
    }
}
