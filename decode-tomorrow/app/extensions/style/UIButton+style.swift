//
//  UIButton+style.swift
//  decode-tomorrow
//
//  Created by Mark on 11/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    func style() {
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
        self.backgroundColor = Colors.teal.uiColor
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.font = Fonts.AvenirNextMedium.font(14)
    }
    
    func styleWhiteBorder() {
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.white.cgColor
        self.backgroundColor = Colors.teal.uiColor
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.font = Fonts.AvenirNextMedium.font(14)
    }
    
    func styleInverted() {
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
        self.backgroundColor = UIColor.white
        self.setTitleColor(Colors.teal.uiColor, for: .normal)
        self.titleLabel?.font = Fonts.AvenirNextMedium.font(14)
    }
    
}
