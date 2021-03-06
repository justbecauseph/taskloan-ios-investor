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
    
    private var reason: ReasonsForLoaning?
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
        picker?.removeFromSuperview()
        let rect = CGRect(x: 0, y: UIScreen.main.bounds.height - 200.0, width: UIScreen.main.bounds.width, height: 200.0)
        picker = UIPickerView.init(frame: rect)
        picker.backgroundColor = UIColor.gray
        self.view.addSubview(picker)
        picker.delegate = self
        picker.dataSource = self
        
        self.picker.transform = CGAffineTransform(translationX: 0, y: self.picker.frame.maxY + 200.0)
        
        UIView.animate(withDuration: 0.5, animations: {
            self.picker.transform = .identity
        }, completion: nil)
        
    }
    
    @IBAction func didTapLoanButton(_ sender: Any) {
    }
    
}

extension LoanViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.picker.removeFromSuperview()
        self.reason = ReasonsForLoaning.allCases[row]
        self.reasonTextField.text = self.reason?.pickerText
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ReasonsForLoaning.allCases[row].pickerText
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
