//
//  AccountView.swift
//  Appetizer
//
//  Created by Hassan Abdulwahab on 07/10/2024.
//

import SwiftUI

struct AccountView: View {
    @StateObject private var viewmodel: AccountViewModel = AccountViewModel()
    
    var body: some View {
        NavigationView(content: {
            Form(content: {
                Section(header: Text("PERSONAL INFO")) {
                    TextField("First Name", text: $viewmodel.user.firstName)
                    TextField("Last Name", text: $viewmodel.user.lastName)
                    TextField("Email", text: $viewmodel.user.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                    DatePicker(
                            "Birthday",
                            selection: $viewmodel.user.birthday,
                            displayedComponents: [.date]
                        )
                    Button("Save Changes") {
                        viewmodel.saveChanges()
                    }
                }
                
                Section(header: Text("REQUESTS")) {
                    Toggle(isOn: $viewmodel.user.extraNapkins, label: {
                        Text("Extra Napkins")
                    })
                    Toggle(isOn: $viewmodel.user.frequentRefills, label: {
                        Text("Frequent Refills")
                    })
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            })
            .navigationTitle("℀ Account")
        })
        .onAppear(perform: {
            viewmodel.retrieveUser()
        })
        .alert(item: $viewmodel.alertItem, content: { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        })
    }
}

#Preview {
    AccountView()
}
