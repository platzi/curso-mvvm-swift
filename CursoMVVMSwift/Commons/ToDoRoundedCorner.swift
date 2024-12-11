//
//  ToDoRoundedCorner.swift
//  CursoMVVMSwift
//

import SwiftUI

struct ToDoRoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(
                width: radius,
                height: radius
            )
        )
        return Path(path.cgPath)
    }
}

#Preview{
    VStack {
        Text("Hello, World!")
            .padding()
            .background(Color.red)
            .clipShape(ToDoRoundedCorner(radius: 10, corners: .allCorners))
    }
}
