//
//  TaskController.swift
//  Tasks
//
//  Created by Andrew R Madsen on 8/15/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import Foundation
import CoreData

let baseURL = URL(string: "https://tasks-b6a43.firebaseio.com/")!

class TaskController {
    
    var tasks: [Task] = [Task(name: "Get groceries", notes: "Eggs, bacon, milk", priority: .normal)]

    func delete(_ task: Task) {
        guard let index = tasks.firstIndex(of: task) else { return }
        
        tasks.remove(at: index)
    }
    
    func update(task: Task, with name: String, notes: String?, priority: TaskPriority) {
        task.name = name
        task.notes = notes
        task.priority = priority.rawValue
    }
    
    func createTask(with name: String, notes: String?, priority: TaskPriority) {
        let task = Task(name: name, notes: notes, priority: priority)
        tasks.append(task)
    }
    
    
    
}
