//
//  RegistrationFeature.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation

struct RegistrationViewModel {}

protocol RegistrationFeatureDelegate {
    func registrationSuccess(_ viewModel: RegistrationViewModel)
    func registrationError(error: String)
}

class RegistrationFeature: Feature<RegistrationFeatureDelegate> {
    
    func register(_ params: RegistrationParams) {
        provider.request(.register(params)).mapX(RegistrationResponse.self, dBag: dBag) { (event) in
            switch event {
            case .next:
                self.delegate?.registrationSuccess(RegistrationViewModel())
            case .error(let error):
                self.delegate?.registrationError(error: error.localizedDescription)
            case .completed:
                break
            }
        }
    }
    
}
