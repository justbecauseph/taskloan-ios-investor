//
//  LoginRepository.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import RxSwift

class LoginRepository: BaseRepository {
    
    let provider = Provider.sharedRx
    
    func sampleRequests() -> Observable<SampleResponse> {
        return provider.request(.sample).map(SampleResponse.self).asObservable()
    }
    
}
