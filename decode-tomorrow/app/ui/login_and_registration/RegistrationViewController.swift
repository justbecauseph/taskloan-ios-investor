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
    
    var feature: RegistrationFeature?
    
    // MARK: - Init

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func initFeature() {
        self.feature = RegistrationFeature(self)
    }
    
    // MARK: - Actions
    @IBAction func didTapConfirmButton(_ sender: Any) {
        let params = RegistrationParams.init(phoneNumber: "123")
        self.feature?.register(params)
    }
    
    @IBAction func didTapCancelButton(_ sender: Any) {
        feature?.detach()
        self.dismiss(animated: true, completion: nil)
    }
    
}

extension RegistrationViewController: RegistrationFeatureDelegate {
    
    func registrationSuccess(_ viewModel: RegistrationViewModel) {
    }
    
    func registrationError(error: String) {
    }
    
}
