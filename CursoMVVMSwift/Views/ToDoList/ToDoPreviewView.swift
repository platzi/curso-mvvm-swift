//
//  ToDoPreviewView.swift
//  CursoMVVMSwift
//

import SwiftUI

struct ToDoPreviewView: View {
    
    @EnvironmentObject private var viewModel: ToDoViewModel
    @Binding public var todo: ToDoEntity?
    @State private var showedTodoCreationSheet: Bool = false
    
    var body: some View {
        if let safeToDo = todo {
            ZStack(alignment: .bottom) {
                Rectangle()
                    .fill(.thinMaterial)
                    .ignoresSafeArea()
                    .onTapGesture {
                        todo = nil
                    }
                VStack(spacing: 36) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(safeToDo.date,
                                 format: .dateTime
                                .weekday(.wide)
                                .day()
                                .month()
                                .year()
                                .hour()
                                .minute())
                            
                            Text(safeToDo.title)
                                .font(.title3)
                                .fontWeight(.semibold)
                        }
                        Spacer()
                    }
                    
                    if let note = safeToDo.note, !note.isEmpty {
                        Text(note)
                            .multilineTextAlignment(.center)
                    }
                    
                    HStack(spacing: 16) {
                        Button {
                            
                        } label: {
                            Text("Editar")
                                .frame(maxWidth: .infinity)
                                .font(.headline)
                                .foregroundStyle(Color.primary)
                                .padding(.vertical, 8)
                                .padding(.horizontal, 32)
                                .overlay {
                                    Capsule(style: .circular)
                                        .stroke(Color.primary, lineWidth: 1)
                                }
                        }
                        Spacer()
                        Button {
                            
                            
                            
                        } label: {
                            Text("Archivar")
                                .frame(maxWidth: .infinity)
                                .font(.headline)
                                .foregroundStyle(Color.primary)
                                .padding(.vertical, 8)
                                .padding(.horizontal, 32)
                                .overlay {
                                    Capsule(style: .circular)
                                        .stroke(Color.primary, lineWidth: 1)
                                }
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.indigo)
                .clipShape(.rect(cornerRadius: 10))
                .padding(8)
            }
            .frame(maxWidth: UIScreen.main.bounds.width)
            .frame(maxHeight: UIScreen.main.bounds.height)
            .zIndex(2)
            .overlay {
               
                
            }
        } else {
            EmptyView()
        }
    }
}
