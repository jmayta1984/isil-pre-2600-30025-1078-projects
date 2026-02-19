//
//  TaskDao.swift
//  ToDo
//
//  Created by Jorge Mayta on 11/02/26.
//

import Foundation
import CoreData

class TaskDao {
    static let shared = TaskDao()
    
    private let context = PersistenceController.shared.container.viewContext
    
    private init() { }
    
    func add(task: Task) {
        
        let entity = TaskEntity(context: context)
        entity.id = task.id
        entity.name = task.name
        
        saveContext()
        
    }
    
    func fetchAll() -> [Task] {
        let fetchRequest: NSFetchRequest<TaskEntity> = TaskEntity.fetchRequest()
        
        guard let entities = try? context.fetch(fetchRequest) else { fatalError() }
        
        return entities.map { entity in
            guard let id = entity.id, let name = entity.name else { fatalError() }
            return Task(id: id, name: name)
        }
        
    }
    
    func remove(task: Task) {
        let fetchRequest: NSFetchRequest<TaskEntity> = TaskEntity.fetchRequest()
        
        fetchRequest.predicate = NSPredicate(format: "id == %@", task.id as CVarArg)
        
        guard let entity = try? context.fetch(fetchRequest).first else { fatalError() }
        
        context.delete(entity)
        
        saveContext()
        
    }
    
    func udpate(task: Task) {
        let fetchRequest: NSFetchRequest<TaskEntity> = TaskEntity.fetchRequest()
        
        fetchRequest.predicate = NSPredicate(format: "id == %@", task.id as CVarArg)
        
        guard let entity = try? context.fetch(fetchRequest).first else { fatalError() }
        entity.name = task.name
        
        saveContext()
    }
    
    
    private func saveContext () {
        if context.hasChanges {
            try? context.save()
        }
    }
}
