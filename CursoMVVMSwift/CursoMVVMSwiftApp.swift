//
//  CursoMVVMSwiftApp.swift
//  CursoMVVMSwift
//

import SwiftUI

@main
struct CursoMVVMSwiftApp: App {
    @StateObject private var viewModel: ToDoViewModel = ToDoViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
