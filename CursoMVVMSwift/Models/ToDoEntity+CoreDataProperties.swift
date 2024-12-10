//
//  ToDoEntity+CoreDataProperties.swift
//  CursoMVVMSwift
//
//  Created by Gustavo Lizárraga on 10/12/24.
//
//

import Foundation
import CoreData


extension ToDoEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ToDoEntity> {
        return NSFetchRequest<ToDoEntity>(entityName: "ToDoEntity")
    }

    @NSManaged public var title: String
    @NSManaged public var note: String?
    @NSManaged public var isCompleted: Bool
    @NSManaged public var isArchived: Bool
    @NSManaged public var id: String
    @NSManaged public var date: Date

}

extension ToDoEntity : Identifiable {

}
