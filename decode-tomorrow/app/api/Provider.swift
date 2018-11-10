//
//  Provider.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import Moya
import RxSwift

class Provider: MoyaProvider<Service> {
    
    static let sharedRx = Reactive(Provider())
    
    init() {
        let plugins = [NetworkLoggerPlugin.init(verbose: true)]
        super.init(plugins: plugins)
    }
    
}
