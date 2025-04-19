//
//  TodoItemModel.swift
//  swiftTodo
//
//  Created by Artem Kulik on 20.04.2025.
//

import Foundation


struct TodoItemModel: Identifiable, Codable {
    var userId: Int
    var id: Int
    var title: String
    var completed: Bool
}
