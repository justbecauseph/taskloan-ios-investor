//
//  Provider.swift
//  taskloan-ios-investor
//
//  Created by AQUINO FRANCISCO on 11/10/18.
//  Copyright © 2018 AQUINO FRANCISCO. All rights reserved.
//

import Foundation
import Moya
import RxSwift

class Provider: MoyaProvider<Service> {
    
    static let sharedRx = Reactive(Provider())
    
    init() {
        let plugins = [NetworkLoggerPlugin.init(verbose: true, cURL: true)]
        super.init(plugins: plugins)
    }
    
}
