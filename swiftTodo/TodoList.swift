//
//  TodoList.swift
//  swiftTodo
//
//  Created by Artem Kulik on 20.04.2025.
//

import SwiftUI

struct TodoList: View {
    

    @EnvironmentObject var todoService: TodoService
    
    
    
    var body: some View {
        List(todoService.todos) {
            todo in TodoItem(todo: todo)
        }.task {
            do {
                try await todoService.getTodos()
                       } catch {}
        }
    }
}

