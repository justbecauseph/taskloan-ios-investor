//
//  Feature.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import RxSwift

class Feature<FD> {
    
    let provider = Provider.sharedRx
    let dBag = DisposeBag()
    var delegate: FD? // AAAHHH REFERENCE CYCLES BECAUSE YOU CAN'T SUB PROTOCOL CLASSES, USE DETACH!
    
    init(_ delegate: FD) {
        self.delegate = delegate
    }
    
    func detach() {
        delegate = nil
    }
    
}
