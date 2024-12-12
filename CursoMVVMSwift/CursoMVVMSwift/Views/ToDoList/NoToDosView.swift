//
//  NoToDosView.swift
//  CursoMVVMSwift
//

import SwiftUI

struct NoToDosView: View {
    @Binding var showedCreationSheet: Bool
    
    var body: some View {
        VStack(spacing: 8) {
            Text("No hay tareas aún.")
                .font(.title2)
            
            Button {
                showedCreationSheet.toggle()
            } label: {
                Text("Intenta crear una.")
                    .font(.headline)
                    .foregroundStyle(Color.teal)
            }
        }
        .multilineTextAlignment(.center)
        .frame(maxWidth: 220)
    }
}

#Preview {
    NoToDosView(
        showedCreationSheet: .constant(false))
}
