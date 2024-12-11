//
//  ToDoArchivedItemView.swift
//  CursoMVVMSwift
//

import SwiftUI

public struct ToDoArchivedItemView: View {
    
    
    public var body: some View {
       
        
            HStack {
                VStack(alignment: .leading) {
                   
                    
                    
                }
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
        
        
    }
    
}

#Preview {
    
}
