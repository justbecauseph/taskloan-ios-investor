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
    case documentUpload
    case dashboard
    case taskDetails
    
    var viewController: UIViewController {
        switch self {
        case .login(let callsAnApiBehindLogin):
            let vc = LoginViewController.instanciate()
            vc.callsAnApiBehindMe = callsAnApiBehindLogin
            return vc
        case .register:
            return RegistrationViewController.instanciate()
        case .documentUpload:
            return DocumentUploadViewController.instanciate()
        case .dashboard:
            return DashboardViewController.instanciate()
        case .taskDetail:
            <#code#>
        }
    }
    
    var completion: (() -> Void)? {
        switch self {
        case .login,
             .register,
             .documentUpload,
             .dashboard:
            return nil
        }
    }
    
    var navType: NavigationType {
        switch self {
        case .login,
             .register,
             .documentUpload,
             .dashboard:
            return .present
        }
    }
    
    var animated: Bool {
        switch self {
        case .login,
             .dashboard:
            return false
        case .register,
             .documentUpload:
            return true
        }
    }
    
}
