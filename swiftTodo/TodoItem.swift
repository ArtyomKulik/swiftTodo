//
//  TodoItem.swift
//  swiftTodo
//
//  Created by Artem Kulik on 20.04.2025.
//



import SwiftUI



struct TodoItem: View {
    let todo: TodoItemModel

    var body: some View {
        Text(todo.title)
    }
}

#Preview {
    TodoItem(todo: TodoItemModel(
        userId: 2,
        id: 2,
        title: "Выполненная задача",
        completed: true
    ))
}
