//
//  TodoForm.swift
//  swiftTodo
//
//  Created by Artem Kulik on 20.04.2025.
//

    import SwiftUI
    import UIKit


    struct TodoForm: View {
        @State private var inputValue = ""
        
        var body: some View {
            TextField("What needs to be done...❔",
                text: $inputValue,
            )
                .onSubmit {
             
            }
        }
    }


    #Preview {
        TodoForm()
    }
