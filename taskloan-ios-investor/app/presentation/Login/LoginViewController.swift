//
//  LoginViewController.swift
//  taskloan-ios-investor
//
//  Created by AQUINO FRANCISCO on 11/10/18.
//  Copyright © 2018 AQUINO FRANCISCO. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    struct segueIds {
        static let dashboardSegue = "dashboardSegue"
        static let registerSegue = "registerSegue"
    }
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var buttonLogin: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameTextField.delegate = self
        passwordTextField.delegate = self

    }
    @IBAction func didTapLogin(_ sender: Any) {
        self.performSegue(withIdentifier: segueIds.dashboardSegue, sender: self)
    }
    @IBAction func didTapRegister(_ sender: Any) {
        self.performSegue(withIdentifier: segueIds.registerSegue, sender: self)
    }
    
}

extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == usernameTextField {
            textField.resignFirstResponder()
            return true
        }else if textField == passwordTextField{
            textField.resignFirstResponder()
            return true
        }
        
        return false
    }
}
