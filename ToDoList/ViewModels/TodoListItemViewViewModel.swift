//
//  TodoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Burak on 26.06.2023.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class TodoListItemViewViewModel: ObservableObject {
     
    
    init(){}
    
    func toggleIsDone(item: TodoListItem){
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uId = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uId)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
    
}
