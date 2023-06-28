//
//  RegisterView.swift
//  ToDoList
//
//  Created by Burak on 26.06.2023.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            
            // Header
            HeaderView(title: "Register", subTitle: "Start Organizing Todos", angle: -15, backGroundColor: .orange)
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
