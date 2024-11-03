//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Hassan Abdulwahab on 07/10/2024.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView(content: {
                List(viewModel.appetizers, rowContent: { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.selectedAppetizer = appetizer
                            viewModel.iShowingDetail = true
                        }
                    
                })
                .navigationTitle("🍟 Appetizers")
                .disabled(viewModel.iShowingDetail ? true : false)
            }).onAppear(perform: {
                viewModel.getAppetizers()
            })
            .blur(radius: viewModel.iShowingDetail ? 20 : 0)
            if viewModel.iShowingDetail {
                if let appt = viewModel.selectedAppetizer {
                    AppetizerDetailView(appetizer: appt, isShowingDetail: $viewModel.iShowingDetail)
                }
            }
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
