//
//  TaskDetailViewController.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController, Storyboarded {

    static var storyboardId: String = "TaskDetailViewController"
    static var storyboard: String = "Dashboard"

    // MARK: - Outlets

    // END OUTLETS

    var feature: ClaimTaskFeature?

    // MARK: - Init

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = self.taskViewModel.title
    }
    
    private var taskViewModel: TaskViewModel!
    
    func initValues(_ taskViewModel: TaskViewModel) {
        self.taskViewModel = taskViewModel
    }

    private func initFeature() {
        self.feature = ClaimTaskFeature(self)
    }

    // MARK: - Actions

}

extension TaskDetailViewController: ClaimTaskFeatureDeletage {
    
    func claimTaskSuccess(_ viewModel: ClaimTaskViewModel) {
    }
    
    func claimTaskError(error: String) {
    }

}
