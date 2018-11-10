//
//  RegistrationFeature.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation

protocol RegistrationFeatureDelegate {
    func registrationSuccess()
    func registrationError(error: String)
}

class RegistrationFeature: Feature<RegistrationFeatureDelegate> {
    
    func register(_ phoneNumber: String) {
        let params = RegistrationParams.init(phoneNumber: phoneNumber)
        provider.request(.register(params)).mapX(RegistrationResponse.self, dBag: dBag) { (event) in
            switch event {
            case .next:
                self.delegate?.registrationSuccess()
            case .error(let error):
                self.delegate?.registrationError(error: error.localizedDescription)
            case .completed:
                break
            }
        }
        delegate?.registrationSuccess()
    }
    
}
