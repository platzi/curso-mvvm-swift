//
//  ToDoPersistenceManager.swift
//  CursoMVVMSwift
//
//  Created by Gustavo Lizárraga on 10/12/24.
//
import CoreData

final class ToDoPersistenceManager {
    static let shared = ToDoPersistenceManager()
    
    let container: NSPersistentContainer
    
    private init() {
        container = NSPersistentContainer(name: "DataModel")
        container.loadPersistentStores{ storeDescription, error in
            if let error = error {
                print("Error cargando datos: \(error)")
            } else {
                print("Carga de datos exitosa.")
            }
        }
    }
}
