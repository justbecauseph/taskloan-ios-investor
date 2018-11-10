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
    
    var viewController: UIViewController {
        switch self {
        case .login:
            return LoginViewController.instanciate()
        }
    }
    
    var completion: (() -> Void)? {
        switch self {
        case .login:
            return nil
        }
    }
    
    var navType: NavigationType {
        switch self {
        case .login:
            return .present
        }
    }
    
    var animated: Bool {
        switch self {
        case .login:
            return false
        }
    }
    
}
