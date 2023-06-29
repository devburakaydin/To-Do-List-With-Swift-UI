//
//  RegisterView.swift
//  ToDoList
//
//  Created by Burak on 26.06.2023.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    
    var body: some View {
        VStack {
            
            // Header
            HeaderView(title: "Register", subTitle: "Start Organizing Todos", angle: -15, backGroundColor: .orange)
            
            
            Form {
                TextField("Full Name", text: $viewModel.fullName)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(
                    title: "Create Account",
                    backGroundColor: .green
                ) {
                    ///Attempt Registretion
                }
            }
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
