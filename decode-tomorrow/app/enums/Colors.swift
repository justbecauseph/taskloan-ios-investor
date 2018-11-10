//
//  Colors.swift
//  decode-tomorrow
//
//  Created by Mark on 11/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import UIKit

enum Colors {
    
    case teal
    case textGray
    
    var uiColor: UIColor {
        switch self {
        case .teal:
            return #colorLiteral(red: 0, green: 0.662745098, blue: 0.6156862745, alpha: 1)
        case .textGray:
            return #colorLiteral(red: 0.4392156863, green: 0.4392156863, blue: 0.4392156863, alpha: 1)
        }
    }
    
    var cgColor: CGColor {
        return self.uiColor.cgColor
    }
}
