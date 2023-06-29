//
//  LoginView.swift
//  ToDoList
//
//  Created by Burak on 26.06.2023.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        VStack {
            
            HeaderView(title: "To Do List", subTitle: "Get Things Done", angle: 15, backGroundColor: .pink)
            
            
            
            NavigationView {
                Form {
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage).foregroundColor(.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TextField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(
                        title: "Log In",
                        backGroundColor: .blue
                    ) {
                        viewModel.login()
                    }
                }
            }
            
            
            
            VStack {
                Text("New around here ?")
                NavigationLink("Create An Account", destination: RegisterView())
            }
            .padding(.bottom, 50)
            
            
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
