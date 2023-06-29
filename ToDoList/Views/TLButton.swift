//
//  TLButton.swift
//  ToDoList
//
//  Created by Burak on 29.06.2023.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let backGroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        }label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backGroundColor)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        .padding()
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "title", backGroundColor: .blue){
            ///Action
        }
    }
}
