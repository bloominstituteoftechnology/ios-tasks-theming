//
//  TaskRepresentation.swift
//  Tasks
//
//  Created by Andrew R Madsen on 8/15/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import Foundation

struct TaskRepresentation: Codable, Equatable {
    
    var name: String
    var notes: String?
    var priority: String
    var identifier: String
    
}
