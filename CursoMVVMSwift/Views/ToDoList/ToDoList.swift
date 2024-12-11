//
//  ToDoList.swift
//  CursoMVVMSwift
//

import SwiftUI

public struct ToDoList: View {
    
    @EnvironmentObject var viewModel: ToDoViewModel
    
    @State private var showedSheet = false
    
    private var unarchivedTodos: [ToDoEntity] {
        viewModel.todos.filter { !$0.isArchived }
    }
    
    @State private var todoToPreview: ToDoEntity? = nil

    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 8),
        GridItem(.flexible(), spacing: 8)
    ]
    
    public var body: some View {
        ZStack(alignment: .center) {
            ScrollView {
                if !unarchivedTodos.isEmpty {
                    LazyVGrid(columns: columns, spacing: 8) {
                        ForEach(unarchivedTodos) { todo in
                            ToDoItemView(todo: todo)
                                .onTapGesture {
                                    todoToPreview = todo
                                }
                        }
                    }
                    .padding(.horizontal)
                } else {
                    
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay {
                if showedSheet {
                    ToDoSheet(isShow: $showedSheet) {
                        ToDoAddView(showed: $showedSheet)
                    }
                    .ignoresSafeArea(.keyboard)
                }
                else if todoToPreview != nil {
                    ToDoPreviewView(todo: $todoToPreview)
                        .transition(AnyTransition.opacity.animation(.easeIn))
                }
            }
        }
        .navigationTitle("ToDos")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                HStack(spacing: 0) {
                    NavigationLink {
                        ToDoArchivedListView()
                    } label: {
                        Image(systemName: "trash")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundStyle(Color.primary)
                    }
                    Button {
                        showedSheet.toggle()
                    } label: {
                        Image(systemName: "plus")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundStyle(Color.primary)
                    }
                }
            }
        }
        .navigationBarHidden(showedSheet || (todoToPreview != nil))
    }
    
}

#Preview {
    NavigationView {
        ToDoList()
            .environmentObject(ToDoViewModel())
    }
}
