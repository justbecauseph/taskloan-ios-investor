//
//  Destination.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import UIKit

enum Destination {
    
    enum NavigationType {
        case present
        case push
    }
    
    case login
    case dashboard(name: String)
    
    var viewController: UIViewController {
        switch self {
        case .login:
            return LoginViewController.instanciate()
        case .dashboard(let name):
            let vc = DashboardViewController.instanciate()
            vc.initValues(name)
            return vc
        }
    }
    
    var completion: (() -> Void)? {
        switch self {
        case .login,
             .dashboard:
            return nil
        }
    }
    
    var navType: NavigationType {
        switch self {
        case .login,
             .dashboard:
            return .present
        }
    }
    
    var animated: Bool {
        switch self {
        case .login,
            .dashboard:
            return true
        }
    }
    
}
