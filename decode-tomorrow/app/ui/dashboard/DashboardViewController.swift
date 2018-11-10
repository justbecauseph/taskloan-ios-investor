//
//  DashboardViewController.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import UIKit

class DashboardViewController: UIViewController, Storyboarded {
    
    static var storyboardId: String = "DashboardViewController"
    static var storyboard: String = "Dashboard"
    
    // MARK: - Outlets
    @IBOutlet weak var tasksListTableView: UITableView!
    // END OUTLETS
    
    private var tasks: [GetTaskListViewModel.TaskViewModel] = []
    private var tasksListTableDataSource: TasksListTableDataSource?
    
    // MARK: - Init
    
    var tasksListFeature: TasksListFeature?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initFeatures()
        initViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        guard AppStates.userIsLoggedIn.evaluate else {
            self.navigate(to: .login)
            return
        }
        tasksListFeature?.fetchTasksList()
    }
    
    private func initFeatures() {
        self.tasksListFeature = TasksListFeature(self)
    }
    
    fileprivate func initTasksListTableView() {
        let nib = UINib(nibName: TasksListTableViewCell.identifier, bundle: nil)
        self.tasksListTableView.register(nib, forCellReuseIdentifier: TasksListTableViewCell.identifier)
        self.tasksListTableView.delegate = self
        self.tasksListTableDataSource = TasksListTableDataSource()
        self.tasksListTableView.dataSource = self.tasksListTableDataSource
    }
    
    private func initViews() {
        initTasksListTableView()
    }
    
}

extension DashboardViewController: UITableViewDelegate {
    
}

extension DashboardViewController: TasksListFeatureDelegate {
    
    func getTaskListSuccess(_ viewModel: GetTaskListViewModel) {
        self.tasks = viewModel.tasks
        self.tasksListTableDataSource?.reloadData(self.tasks, tableView: tasksListTableView)
    }
    
    func getLoanError(error: String) {
    }
    
}

