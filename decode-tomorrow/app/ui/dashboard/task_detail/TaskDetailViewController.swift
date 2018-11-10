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
    static var storyboard: String = ""

    // MARK: - Outlets

    // END OUTLETS

    var feature: ClaimTask?

    // MARK: - Init

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    private func initFeature() {
        self.feature = <#FeatureInit#>
    }

    // MARK: - Actions

}

extension <#Name#>ViewController: <#Protocol#> {

    <#code#>

}
