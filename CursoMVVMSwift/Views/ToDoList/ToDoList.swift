//
//  ToDoList.swift
//  CursoMVVMSwift
//
//  Created by Gustavo Lizárraga on 10/12/24.
//

import SwiftUI

public struct ToDoList: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 8),
        GridItem(.flexible(), spacing: 8)
    ]
    
    public var body: some View {
        ZStack(alignment: .center) {
            ScrollView {
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay {
                
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
                        
                    } label: {
                        Image(systemName: "plus")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundStyle(Color.primary)
                    }
                }
            }
        }
        
    }
    
}

#Preview {
    NavigationView {
        ToDoList()
    }
}
