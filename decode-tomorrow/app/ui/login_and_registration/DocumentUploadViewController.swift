//
//  DocumentUploadViewController.swift
//  decode-tomorrow
//
//  Created by Mark on 11/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import UIKit

class DocumentUploadViewController: UIViewController, Storyboarded {
    
    static var storyboardId: String = "DocumentUploadViewController"
    static var storyboard: String = "LoginAndRegistration"
    
    // MARK: - Outlets
    @IBOutlet weak var idNumberTextField: UITextField!
    @IBOutlet weak var documentImageView: UIImageView!
    @IBOutlet weak var verifyButton: UIButton!
    @IBOutlet weak var courseOrSpecializationTextField: UITextField!
    // END OUTLETS
    
    var feature: DocumentUploadFeature?
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initFeature()
        initViews()
    }
    
    private func initViews() {
        idNumberTextField.style()
        courseOrSpecializationTextField.style()
        documentImageView.addDashedBorder()
        verifyButton.style()
    }
    
    private func initFeature() {
        self.feature = DocumentUploadFeature(self)
    }
    
    // MARK: - Actions
    
    @IBAction func didTapVerifyButton(_ sender: Any) {
        guard let documentImage = documentImageView.image else { return }
        guard let data = documentImage.jpegData(compressionQuality: 0.50) else { return }
        self.feature?.uploadDocument(data)
    }
    
}

extension DocumentUploadViewController: DocumentUploadFeatureDelegate {
    
    func documentUploadSuccess() {
        showAlert(.info, message: "What's next?")
    }
    
    func documentUploadError(error: String) {
        showAlert(.error, message: error)
    }
    
}
