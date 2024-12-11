//
//  ToDoArchivedItemView.swift
//  CursoMVVMSwift
//

import SwiftUI

public struct ToDoArchivedItemView: View {
    @EnvironmentObject private var viewModel: ToDoViewModel
    
    public var todo: ToDoEntity
    
    public var body: some View {
        if !todo.id.isEmpty {
            HStack {
                VStack(alignment: .leading) {
                   
                    
                    Text(todo.title)
                        .font(.headline)
                        .lineLimit(1)
                        .padding(.top, -4)
                }
                Text(todo.date, format: .dateTime.day().month().year())
                Spacer()
                HStack(spacing: 8) {
                    Button {
                        
                        
                    } label: {
                        Image(systemName: "trash")
                            .font(.system(size: 20, weight: .semibold))
                            .tint(Color(UIColor.systemPink))
                    }
                    
                    Button {
                        
                        
                    } label: {
                        Image(systemName: "plus")
                            .font(.system(size: 20, weight: .semibold))
                            .tint(Color.primary)
                    }
                }
            }
            .padding()
            .background(Color.gray)
            .clipShape(.rect(cornerRadius: 10))
        } else {
            EmptyView()
        }
    }
    
}

#Preview {
    
}
