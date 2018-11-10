//
//  LoanFeature.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation

struct GetLoanViewModel {}

protocol LoanFeatureDelegate {
    func getLoanSuccess(_ viewModel: GetLoanViewModel)
    func getLoanError(error: Error)
}

class LoanFeature: Feature<LoanFeatureDelegate> {
    
    func getLoan() {
//        provider.request(<#T##token: Service##Service#>)
    }
    
}
