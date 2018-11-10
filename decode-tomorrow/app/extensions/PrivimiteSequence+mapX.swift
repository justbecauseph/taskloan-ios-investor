//
//  PrivimiteSequence+mapX.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation
import Moya
import RxSwift

extension PrimitiveSequence where TraitType == SingleTrait, ElementType == Response {
    
    func mapX<D: Decodable>(_ decodable: D.Type, dBag: DisposeBag, on handler: @escaping ((Event<D>) -> Void)) {
        self.mapErrors().map(decodable).asObservable().subscribe(handler).disposed(by: dBag)
    }

}
