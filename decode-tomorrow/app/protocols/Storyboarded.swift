//
//  Storyboarded.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import UIKit

protocol Storyboarded {
    static var storyboardId: String { get }
    static var storyboard: String { get }
}

extension Storyboarded where Self: UIViewController {
    
    static func instanciate() -> Self {
        let sb = UIStoryboard(name: storyboard, bundle: nil)
        return sb.instantiateViewController(withIdentifier: storyboardId) as! Self
    }
    
}
