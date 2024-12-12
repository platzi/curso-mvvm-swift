//
//  ToDoArchivedListView.swift
//  CursoMVVMSwift
//

import SwiftUI

public struct ToDoArchivedListView: View {
    
    @EnvironmentObject var viewModel: ToDoViewModel
    
    private var archivedTodos: [ToDoEntity] {
        viewModel.todos.filter { $0.isArchived }
    }

    public var body: some View {
        ScrollView {
            if !archivedTodos.isEmpty {
                ForEach(archivedTodos) { todo in
                    ZStack {
                        ToDoArchivedItemView(todo: todo)
                    }
                    .padding(.horizontal)
                }
            } else {
                ToDoNoArchivedView()
                    .offset(y: UIScreen.main.bounds.height * 0.35)
            }
        }
        .padding(.top, 16)
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Archivadas")
    }
    
}

#Preview {        
}
