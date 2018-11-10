//
//  UIViewController+navigate.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func navigate(to destination: Destination) {
        switch destination.navType {
        case .present:
            self.present(destination.viewController, animated: destination.animated, completion: destination.completion)
        case .push:
            self.navigationController?.pushViewController(destination.viewController, animated: destination.animated)
        }
    }
    
}
