//
//  Task+Convenience.swift
//  Tasks
//
//  Created by Andrew R Madsen on 8/11/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import Foundation
import CoreData

enum TaskPriority: String {
    case low
    case normal
    case high
    case critical
    
    static var allPriorities: [TaskPriority] {
        return [.low, .normal, .high, .critical]
    }
}

class Task: Equatable {
    
    
    
    var name: String
    var notes: String?
    var priority: String
    
    init(name: String, notes: String? = nil, priority: TaskPriority = .normal) {
        self.name = name
        self.notes = notes
        self.priority = priority.rawValue
    }
    
    static func == (lhs: Task, rhs: Task) -> Bool {
        return lhs.name == rhs.name &&
            lhs.notes == rhs.notes &&
            lhs.priority == rhs.priority
    }
}










