//
//  UIViewController+api.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import RxSwift
import UIKit

extension UIViewController {
    
    var api: Reactive<Provider> {
        return Provider.shared.rx
    }
    
}
