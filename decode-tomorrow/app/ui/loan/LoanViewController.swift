//
//  LoanViewController.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import FontAwesome_swift
import UIKit

class LoanViewController: UIViewController, Storyboarded {
    
    static var storyboardId: String = "LoanViewController"
    static var storyboard: String = "Loan"
    
    // MARK: - Outlets
    @IBOutlet weak var loanAmountText: UILabel!
    @IBOutlet weak var reasonTextField: UITextField!
    @IBOutlet weak var dropDownButton: UIButton!
    @IBOutlet weak var loanButton: UIButton!
    
    // END OUTLETS
    
    var feature: LoanFeature?
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initFeature()
        initViews()
    }
    
    private func initFeature() {
        self.feature = LoanFeature(self)
    }
    
    private func initViews() {

        dropDownButton.setTitleColor(Colors.teal.uiColor, for: .normal)
        dropDownButton.titleLabel?.font = UIFont.fontAwesome(ofSize: 14, style: FontAwesomeStyle.solid)
        dropDownButton.setTitle(String.fontAwesomeIcon(name: .chevronDown), for: .normal)
        
        // !HACK - set the rightView to avoid overlapping text and button:
        reasonTextField.rightView = dropDownButton
        reasonTextField.rightViewMode = .always
        
        reasonTextField.style()
        loanButton.style()
    }
    
    // MARK: - Actions
    
    @objc private func dropDownButtonAction() {
        
    }
    
    @IBAction func didTapLoanButton(_ sender: Any) {
    }
    
}

extension LoanViewController: LoanFeatureDelegate {
    
    func getLoanSuccess(_ viewModel: GetLoanViewModel) {
    }
    
    func getLoanError(error: Error) {
    }
    
}
