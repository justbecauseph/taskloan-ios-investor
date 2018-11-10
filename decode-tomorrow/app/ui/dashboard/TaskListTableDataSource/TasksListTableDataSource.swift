//
//  TaskListTableDataSource.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import UIKit

class TasksListTableDataSource: NSObject, UITableViewDataSource {

    var tasks: [GetTaskListViewModel.TaskViewModel] = []
    
    override init() {
    }
    
    func reloadData(_ tasks: [GetTaskListViewModel.TaskViewModel], tableView: UITableView) {
        self.tasks = tasks
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TasksListTableViewCell.identifier, for: indexPath) as! TasksListTableViewCell
        let task = self.tasks[indexPath.row]
        cell.taskNameLabel.text = task.name
        return cell
    }
    
}
