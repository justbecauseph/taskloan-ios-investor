//
//  Fonts.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import UIKit

enum Fonts: String {
    
    case AvenirNextBold
    case AvenirNextBoldItalic
    case AvenirNextDemiBold
    case AvenirNextDemiBoldItalic
    case AvenirNextHeavy
    case AvenirNextHeavyItalic
    case AvenirNextItalic
    case AvenirNextMedium
    case AvenirNextMediumItalic
    case AvenirNextRegular
    case AvenirNextUltraLight
    case AvenirNextUltraLightItalic
    
    func font(_ size: CGFloat) -> UIFont {
        let name = self.rawValue.replacingOccurrences(of: "AvenirNext", with: "AvenirNext-")
        return UIFont(name: name, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
}
