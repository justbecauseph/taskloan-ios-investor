//
//  PrimitiveSequence+mapErrors.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import Moya
import RxSwift

extension PrimitiveSequence where TraitType == SingleTrait, ElementType == Response {
    
    func mapErrors() -> PrimitiveSequence {
        return self.catchError { (e) -> PrimitiveSequence in
            
            guard let error = e as? MoyaError else { throw e }
            
            if case MoyaError.statusCode(let response) = error {
                throw try response.map(ApiError.self)
            }
            
            return self
        }
    }
    
}
