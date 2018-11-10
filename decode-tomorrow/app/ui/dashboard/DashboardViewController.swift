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
    
    static var storyboardId: String = "Dashboard"
    static var storyboard: String = "DashboardViewController"
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initFeatures()
        initViews()
    }
    
    func initValues(_ name: String) {
        self.title = name
    }
    
    private func initFeatures() {
    }
    
    private func initViews() {
    }
    
}

