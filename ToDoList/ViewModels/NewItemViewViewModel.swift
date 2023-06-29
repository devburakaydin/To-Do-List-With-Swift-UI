//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Burak on 26.06.2023.
//

import Foundation

class NewIItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    init(){}
    
    func save() {
        
    }
    
    func canSave() -> Bool{
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
    
    
    
}
