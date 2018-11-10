//
//  Service.swift
//  taskloan-ios-investor
//
//  Created by AQUINO FRANCISCO on 11/10/18.
//  Copyright © 2018 AQUINO FRANCISCO. All rights reserved.
//

import Foundation
import Moya

enum Service {
    case sample(RegisterModel)
}

extension Service: TargetType {
    
    var baseURL: URL {
        let urlString = "www.foo.ph/api/"
        guard let url = URL(string: urlString) else { fatalError() }
        return url
    }
    
    var path: String {
        switch self {
        case .sample:
            return "sample"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .sample:
            return .get
        }
    }
    
    var sampleData: Data {
        return "{}".data(using: .utf8)!
    }
    
    var task: Task {
        switch self {
        case .sample(let param):
            return .requestJSONEncodable(param)
        }
    }
    
    var headers: [String : String]? {
        return [:]
    }
    
}
