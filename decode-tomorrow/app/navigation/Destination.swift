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
    
    case login(CallsAnApiBehindLogin)
    case register
    
    var viewController: UIViewController {
        switch self {
        case .login(let callsAnApiBehindLogin):
            let vc = LoginViewController.instanciate()
            vc.callsAnApiBehindMe = callsAnApiBehindLogin
            return vc
        case .register:
            return RegistrationViewController.instanciate()
        }
    }
    
    var completion: (() -> Void)? {
        switch self {
        case .login,
             .register:
            return nil
        }
    }
    
    var navType: NavigationType {
        switch self {
        case .login,
             .register:
            return .present
        }
    }
    
    var animated: Bool {
        switch self {
        case .login:
            return false
        case .register:
            return true
        }
    }
    
}
