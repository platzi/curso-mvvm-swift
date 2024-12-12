//
//  ToDoSheet.swift
//  CursoMVVMSwift
//

import SwiftUI

struct ToDoSheet<Content>: View where Content: View {
    
    @Binding public var isShow: Bool
    @ViewBuilder public var content: () -> Content
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color(uiColor: UIColor(red: 0, green: 0, blue: 0, alpha: 0.4))
                .ignoresSafeArea()
                .onTapGesture {
                    isShow.toggle()
                }
                .animation(nil, value: UUID())
            
            VStack {
                HStack {
                    Spacer()
                    Button {
                        isShow.toggle()
                    } label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 18)
                            .frame(height: 18)
                            .tint(Color.primary)
                    }
                }
                content()
                Spacer()
            }
            .padding(24)
            .frame(maxWidth: .infinity)
            .frame(height: UIScreen.main.bounds.height * 0.7)
            .background(
                Color(UIColor.secondarySystemBackground)
            )
            .clipShape(
                ToDoRoundedCorner(
                    radius: 20,
                    corners: [.topLeft, .topRight]
                )
            )
        }
        .ignoresSafeArea(edges: .bottom)
        .zIndex(2.0)
        .transition(.move(edge: .bottom))
        .animation(nil, value: UUID())
    }
}

#Preview {
    ToDoSheet(isShow: .constant(true)) {
        EmptyView()
    }
}
