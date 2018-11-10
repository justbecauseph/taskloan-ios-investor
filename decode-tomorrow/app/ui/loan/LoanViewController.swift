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
        
        reasonTextField.isUserInteractionEnabled = false
        
        reasonTextField.style()
        loanButton.style()
    }
    
    // MARK: - Actions
    
    private var picker: UIPickerView!
    
    @IBAction func dropDownButtonAction() {
        let picker = UIPickerView()
        self.view.addSubview(picker)
        picker.translatesAutoresizingMaskIntoConstraints = false
        picker.heightAnchor.constraint(equalToConstant: 40).isActive = true
        picker.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        picker.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        picker.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        picker.delegate = self
        picker.dataSource = self
        
        
    }
    
    @IBAction func didTapLoanButton(_ sender: Any) {
    }
    
}

extension LoanViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ReasonsForLoaning.allCases[component].pickerText
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ReasonsForLoaning.allCases.count
    }
    
}

extension LoanViewController: LoanFeatureDelegate {
    
    func getLoanSuccess(_ viewModel: GetLoanViewModel) {
    }
    
    func getLoanError(error: Error) {
    }
    
}
