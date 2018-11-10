//
//  TaskListResponse.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation

struct Task: Decodable {
}

struct TaskListResponse: Decodable {
    
    let array: [Task]
    
}
