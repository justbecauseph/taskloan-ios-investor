//
//  LoginFeature.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import RxSwift

protocol LoginFeatureDelegate {
    func loginSuccess()
    func loginFailed()
}

class LoginFeature  {
    
    let provider = Provider.sharedRx
    let dBag = DisposeBag()
    
    var delegate: LoginFeatureDelegate?
    
    func login(username: String, password: String) {
        let params = LoginParams(username: username, password: password)
        provider.request(.login(params)).mapX(LoginResponse.self, dBag: dBag) { (event) in
            switch event {
            case .next(let value):
                print(value)
            case .error(let error):
                print(error.localizedDescription)
            case .completed:
                break
            }
        }
    }
    
}
