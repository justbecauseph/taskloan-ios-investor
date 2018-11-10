//
//  Service.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import Moya

enum Service {
    case login(LoginParams)
}

extension Service: TargetType {
    
    var baseURL: URL {
        let urlString = "www.foo.ph/api/"
        guard let url = URL(string: urlString) else { fatalError() }
        return url
    }
    
    var path: String {
        switch self {
        case .login:
            return "login"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .login:
            return .post
        }
    }
    
    var sampleData: Data {
        return "{}".data(using: .utf8)!
    }
    
    var task: Task {
        switch self {
        case .login(let params):
            return .requestJSONEncodable(params)
        }
    }
    
    var headers: [String : String]? {
        return [:]
    }
    
}

