//
//  TasksListFeature.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import RxSwift

struct GetTaskListViewModel {
    init(_ model: TaskListResponse) {
    }
}

protocol TasksListDelegate {
    func getTaskListSuccess(_ viewModel: GetTaskListViewModel)
    func getLoanError(error: String)
}

class TasksListFeature: Feature<TasksListDelegate> {
    
    func fetchTasksList() {
        provider.request(.getTasksList).mapX(TaskListResponse.self, dBag: dBag) { (event) in
            switch event {
            case .next(let value):
                let vm = GetTaskListViewModel(value)
                self.delegate?.getTaskListSuccess(vm)
            case .error(let error):
                self.delegate?.getLoanError(error: error.localizedDescription)
            case .completed:
                break
            }
        }
    }
    
}

