//
//  ToDoAddView.swift
//  CursoMVVMSwift
//
//  Created by Gustavo Lizárraga on 10/12/24.
//

import SwiftUI

public struct ToDoAddView: View {
    
    public var todo: ToDoEntity? = nil
        
    
    public var body: some View {
        VStack(spacing: 16) {
            
            
            
            Spacer()
            
            Button {
               
                
            } label: {
                Text("Guardar".uppercased())
                    .font(.headline)
                    .tint(Color.primary)
                    .padding()
                    .frame(maxWidth: .infinity)
                    
                
                    .clipShape(.rect(cornerRadius: 10))
            }
            
        }
        .onAppear {
           
        }
    }
    
}

#Preview {
    NavigationView {
        ToDoAddView()
    }
}
