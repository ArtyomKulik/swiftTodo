//
//  swiftTodoApp.swift
//  swiftTodo
//
//  Created by Artem Kulik on 20.04.2025.
//

import SwiftUI

@main
struct swiftTodoApp: App {
    @StateObject var todoService = TodoService()

    var body: some Scene {
          WindowGroup {
              NavigationStack {
                  TodoList().environmentObject(todoService)
              }
          }
      }
}
