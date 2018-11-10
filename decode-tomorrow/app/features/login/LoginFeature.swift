//
//  LoginFeature.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import RxSwift

protocol LoginFeatureDelegate: class {
    func loginSuccess()
    func loginFailed()
}

class LoginFeature  {
    
    let credentialsManager = CredentialsManager.shared
    
    weak var delegate: LoginFeatureDelegate?
    
    init(_ delegate: LoginFeatureDelegate) {
        self.delegate = delegate
    }
    
    func login(email: String, password: String) {
        let params = LoginParams(email: email, password: password)
        credentialsManager.store(params)
        delegate?.loginSuccess()
    }
    
}
