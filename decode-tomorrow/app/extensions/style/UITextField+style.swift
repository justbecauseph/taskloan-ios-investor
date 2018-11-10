//
//  UITextField+style.swift
//  decode-tomorrow
//
//  Created by Mark on 11/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    
    func style() {
        self.borderStyle = .none
        
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = false
        
        self.layer.borderWidth = 1
        self.layer.borderColor = Colors.teal.cgColor
        
        let paddingView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 20))
        self.leftView = paddingView
        self.leftViewMode = .always
    }

}
