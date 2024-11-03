//
//  EmptyState.swift
//  Appetizer
//
//  Created by Hassan Abdulwahab on 02/11/2024.
//

import SwiftUI

struct EmptyState: View {
    
    var description: String = "Empty"
    var imageResource: ImageResource?
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            VStack {
                if let imageRes = imageResource {
                    Image(imageRes)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 150)
                }
                
                Text(description)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
        }
    }
}

#Preview {
    EmptyState()
}
