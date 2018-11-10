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
    
    case IBMPlexSansBold
    case IBMPlexSansBoldItalic
    case IBMPlexSansExtraLight
    case IBMPlexSansExtraLightItalic
    case IBMPlexSansItalic
    case IBMPlexSansLight
    case IBMPlexSansLightItalic
    case IBMPlexSansMedium
    case IBMPlexSansMediumItalic
    case IBMPlexSansRegular
    case IBMPlexSansSemiBold
    case IBMPlexSansSemiBoldItalic
    case IBMPlexSansThin
    case IBMPlexSansThinItalic
    
    func font(_ size: CGFloat) -> UIFont {
        let name = self.rawValue.replacingOccurrences(of: "IBMPlexSans", with: "IBMPlexSans-")
        return UIFont(name: name, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
}
