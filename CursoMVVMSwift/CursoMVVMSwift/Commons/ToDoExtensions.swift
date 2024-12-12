//
//  ToDoExtensions.swift
//  CursoMVVMSwift
//

import SwiftUI

extension View {
    public func cornerRadius(
        _ radius: CGFloat,
        corners: UIRectCorner) -> some View {
        clipShape(
            ToDoRoundedCorner(
                radius: radius,
                corners: corners
            ))
    }
    
    public func transparentScrolling() -> some View {
        return onAppear {
            UITextView.appearance().backgroundColor = .clear
        }
    }
}

#Preview {
    Text("Hello, World!")
        .padding()
        .background(Color.red)
        .cornerRadius(10, corners: .allCorners)
        .transparentScrolling()
}
