//
//  Provider.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import Moya

class Provider: MoyaProvider<Service> {
    
    static let shared = Provider()
    
    init() {
        let plugins = [NetworkLoggerPlugin.init(verbose: true, cURL: true)]
        super.init(plugins: plugins)
    }
    
}
