//
//  ToDoViewModel.swift
//  CursoMVVMSwift
//

import Foundation
import CoreData
import Combine

public final class ToDoViewModel: ObservableObject {
 
    @Published private(set) var todos: [ToDoEntity] = []

    var cancellables = Set<AnyCancellable>()
    
    private var storeContainer: NSPersistentContainer {
        return ToDoPersistenceManager.shared.container
    }

    init() {
        fetchToDos()
    }
        
    private func fetchToDos() {
        do {
            let request: NSFetchRequest<ToDoEntity> = ToDoEntity.fetchRequest()
            let sortDescriptor = NSSortDescriptor(key: "date", ascending: true)
            
            request.sortDescriptors = [sortDescriptor]
            request.returnsObjectsAsFaults = false
            todos = try storeContainer.viewContext.fetch(request)
        } catch {
            print("Error al recuperar ToDos: \(error)")
        }
    }
    
    private func saveData() {
        do {
            try storeContainer.viewContext.save()
            fetchToDos()
        } catch {
            print("Error guardando datos: \(error)")
        }
    }
    
    private func getToDoIndex(_ todo: ToDoEntity) -> Int? {
        guard
            let index = todos.firstIndex(where: { $0.id == todo.id })
        else { return nil }
        
        return index
    }
    
    public func validateInput(ofText text: String) -> Bool {
        guard
            text.trimmingCharacters(in: .whitespaces).count > 2
        else {
            return false
        }
        
        return true
    }
    
    public func addToDo() {
        
    }
    
    public func updateToDo(_ todo: ToDoEntity) {
        
    }
    
    public func updateToDoStatus(_ todo: ToDoEntity) {
        
    }
    
    public func archiveTodo(_ todo: ToDoEntity) {
        
    }
    
    public func unarchiveToDo(_ todo: ToDoEntity) {
        
    }
    
    public func deleteToDo(_ todo: ToDoEntity) {
        
    }
}
