//
//  ToDoNoArchivedView.swift
//  CursoMVVMSwift
//

import SwiftUI

public struct ToDoNoArchivedView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    public var body: some View {
        VStack(spacing: 8) {
            Text("No hay notas archivadas.")
                .font(.title2)
            
            Button {
                dismiss()
            } label: {
                Text("Ver todas las notas")
                    .font(.headline)
                    .foregroundStyle(Color.teal)
            }
        }
        .multilineTextAlignment(.center)
        .frame(maxWidth: 220)
    }
    
}
