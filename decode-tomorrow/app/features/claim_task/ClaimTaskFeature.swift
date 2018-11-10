//
//  ClaimTaskFeature.swift
//  decode-tomorrow
//
//  Created by Mark on 11/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation

struct ClaimTaskViewModel {
    let model: ClaimTaskResponse
    init(_ model: ClaimTaskResponse) {
        self.model = model
    }
}

protocol ClaimTaskFeatureDeletage {
    func claimTaskSuccess(_ viewModel: ClaimTaskViewModel)
    func claimTaskError(error: String)
}

class ClaimTaskFeature: Feature<ClaimTaskFeatureDeletage>  {
    
    func claim(_ params: ClaimTaskParams) {
        provider.request(.claimTask(params)).mapX(ClaimTaskResponse.self, dBag: dBag) { (event) in
            switch event {
            case .next(let element):
                let vm = ClaimTaskViewModel(element)
                self.delegate?.claimTaskSuccess(vm)
            case .error(let error):
                self.delegate?.claimTaskError(error: error.localizedDescription)
            case .completed:
                break
            }
        }
    }
    
}
