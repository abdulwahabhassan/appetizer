//
//  OrderView.swift
//  Appetizer
//
//  Created by Hassan Abdulwahab on 07/10/2024.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    
    var body: some View {
        NavigationView(content: {
            VStack(content: {
                if (order.items.isEmpty) {
                    EmptyState(description: "You have no items in your order.", imageResource: .emptyOrder)
                } else {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(.insetGrouped)
                    
                    Button {
                        print("Order button clicked")
                    } label: {
                        Text("$\(order.total, specifier: "%.2f") - Place Order")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .frame(width: 260, height: 50, alignment: .center)
                            .foregroundColor(.white)
                            .background(.brandPrimary)
                            .cornerRadius(10)
                    }
                    .padding(.top, 20)
                }
            })
            .navigationTitle("🧾 Orders")
        })
    }
    
    func deleteItems(at offsets: IndexSet) {
        order.items.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
