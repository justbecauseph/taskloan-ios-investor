//
//  TasksListFeature.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import RxSwift

struct TaskViewModel {
    let model: Task
    let title: String
    init(_ model: Task) {
        self.model = model
        self.title = model.title
    }
}

protocol TasksListFeatureDelegate {
    func getTaskListSuccess(_ viewModel: [TaskViewModel])
    func getTaskListError(error: String)
}

class TasksListFeature: Feature<TasksListFeatureDelegate> {
    
    func fetchTasksList(category: TasksCategories) {
        provider.request(.getTasksList(category)).mapX([Task].self, dBag: dBag) { (event) in
            switch event {
            case .next(let value):
                self.delegate?.getTaskListSuccess(value.map { TaskViewModel.init($0) })
            case .error(let error):
                self.delegate?.getTaskListError(error: error.localizedDescription)
            case .completed:
                break
            }
        }
    }
    
}

