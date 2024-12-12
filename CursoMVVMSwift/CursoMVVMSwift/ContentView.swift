//
//  ContentView.swift
//  CursoMVVMSwift
//
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ToDoList()
        }
        .tint(Color.primary)
    }
}

#Preview {
    ContentView()
}
