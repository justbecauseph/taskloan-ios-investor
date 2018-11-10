//
//  RegistrationViewController.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController, Storyboarded {
    
    static var storyboardId: String = "RegistrationViewController"
    static var storyboard: String = "LoginAndRegistration"
    
    // MARK: - Outlets
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    // END OUTLETS

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    @IBAction func didTapRegisterButton(_ sender: Any) {
    }
    
}
