//
//  MainPage.swift
//  swiftTodo
//
//  Created by Artem Kulik on 20.04.2025.
//

import Foundation

import SwiftUI

struct MainPage: View {

    var body: some View {
         
            VStack {
                TodoForm().frame(height: 100).padding(.horizontal, 10)    .border(.primary, width: 2)    .cornerRadius(4)


                TodoList()
           
        }.safeAreaPadding(.horizontal)
    }
}

#Preview {
    MainPage().environmentObject(TodoService())
}
