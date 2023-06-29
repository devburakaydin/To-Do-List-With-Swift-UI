//
//  RegisterViewViewModel.swift
//  ToDoList
//
//  Created by Burak on 26.06.2023.
//

import Foundation

class RegisterViewViewModel: ObservableObject {
    
    @Published var fullName = ""
    @Published var email = ""
    @Published var password = ""
    
    init(){}
    
}
