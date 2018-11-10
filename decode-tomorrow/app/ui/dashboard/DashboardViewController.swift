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
    
    // MARK: - Outlers
    // END OUTLETS
    
    private var tasks: [GetTaskListViewModel.TaskViewModel] = []
    
    // MARK: - Init
    
    var tasksListFeature: TasksListFeature?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initFeatures()
        initViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if !AppStates.userIsLoggedIn.evaluate { self.navigate(to: .login) }
    }
    
    private func initFeatures() {
        self.tasksListFeature = TasksListFeature(self)
    }
    
    private func initViews() {
    }
    
}

extension DashboardViewController: TasksListFeatureDelegate {
    
    func getTaskListSuccess(_ viewModel: GetTaskListViewModel) {
        self.tasks = viewModel.tasks
    }
    
    func getLoanError(error: String) {
    }
    
}

