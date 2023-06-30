//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Burak on 26.06.2023.
//

import FirebaseFirestore
import Foundation

class TodoListViewModel: ObservableObject {
     
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String){
        self.userId = userId
        
    }
    
    func delete(item: TodoListItem) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(item.id)
            .delete()
    }
    
}
