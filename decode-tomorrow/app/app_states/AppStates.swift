//
//  AppStates.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation

enum AppStates {
    case userIsLoggedIn
    
    var evaluate: Bool {
        switch self {
        case .userIsLoggedIn:
            return CredentialsManager.shared.token != nil
        }
    }
}
