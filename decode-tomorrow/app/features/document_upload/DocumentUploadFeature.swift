//
//  DocumentUploadFeature.swift
//  decode-tomorrow
//
//  Created by Mark on 11/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import RxSwift

protocol DocumentUploadFeatureDelegate {
    func documentUploadSuccess()
    func documentUploadError(error: String)
}

class DocumentUploadFeature: Feature<DocumentUploadFeatureDelegate>  {
    
    let credentialsManager = CredentialsManager.shared
    
    func uploadDocument(_ data: Data) {
        provider.request(.uploadDocument(data)).mapX(EmptyResponse.self, dBag: dBag) { (event) in
            switch event {
            case .next:
                self.delegate?.documentUploadSuccess()
            case .error(let error):
                self.delegate?.documentUploadError(error: error.localizedDescription)
            case .completed:
                break
            }
        }
    }
    
}

