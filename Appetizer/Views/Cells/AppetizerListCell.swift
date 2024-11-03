//
//  AppetizerListCell.swift
//  Appetizer
//
//  Created by Hassan Abdulwahab on 09/10/2024.
//

import SwiftUI

struct AppetizerListCell: View {
    let appetizer: Appetizer
    var body: some View {
        HStack(
            content: {
                AppetizerRemoteImage(urlString: appetizer.imageURL)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 90, height: 90)
                    .clipShape(.rect(cornerRadius: 8))
                VStack(
                    alignment: .leading,
                    spacing: 5,
                    content: {
                        Text(appetizer.name)
                            .fontWeight(.medium)
                            .font(.title2)
                        Text("$\(appetizer.price, specifier: "%.2f")")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                    })
                .padding(.leading)
            })
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
