//
//  TodoService.swift
//  swiftTodo
//
//  Created by Artem Kulik on 20.04.2025.
//

import Foundation



class TodoService: ObservableObject {
    @Published var todos = [TodoItemModel]()
    
    let BASE_API_URL = "https://jsonplaceholder.typicode.com/todos"
    
    enum FetchError: Error {
            case noResponse
            case failedRequest(statusCode: Int)
            case badJSON(error: Error)
        }
    
    
    func getTodos() async throws {
        guard let BASE_API_URL_CHECKED = URL(string: BASE_API_URL) else { return }
        
        let (data, response) = try await URLSession.shared.data(for: URLRequest(url: BASE_API_URL_CHECKED))
                guard let response = response as? HTTPURLResponse else {
                    throw FetchError.noResponse
                }
                
        
        guard response.statusCode == 200 else {
                    throw FetchError.failedRequest(statusCode: response.statusCode)
                }
        
        
          do {
              let decodedTodos = try JSONDecoder().decode([TodoItemModel].self, from: data)
              await MainActor.run {
                  todos = decodedTodos
              }
          } catch {
              throw FetchError.badJSON(error: error)
          }
    }
}
