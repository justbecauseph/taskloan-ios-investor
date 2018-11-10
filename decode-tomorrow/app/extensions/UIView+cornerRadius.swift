//
//  UIView+cornerRadius.swift
//  decode-tomorrow
//
//  Created by Mark on 11/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    var cornerRadius: CGFloat {
        set {
            self.layer.cornerRadius = newValue
            self.layer.masksToBounds = newValue != 0.0
        }
        get {
            return self.layer.cornerRadius
        }
    }
    
}
