//
//  LoanViewController.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation

import UIKit

class LoanViewController: UIViewController, Storyboarded {
    
    static var storyboardId: String = "LoanViewController"
    static var storyboard: String = "Loan"
    
    // MARK: - Outlets
    
    // END OUTLETS
    
    var feature: LoanFeature?
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func initFeature() {
        self.feature = LoanFeature(self)
    }
    
    // MARK: - Actions
    
}

extension LoanViewController: LoanFeatureDelegate {
    
    func getLoanSuccess(_ viewModel: GetLoanViewModel) {
    }
    
    func getLoanError(error: Error) {
    }
    
}
