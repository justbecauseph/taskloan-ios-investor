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
    
    private static let decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }()
    
    func mapX<D: Decodable>(_ decodable: D.Type, dBag: DisposeBag, on handler: @escaping ((Event<D>) -> Void)) {
        self.mapErrors().map(D.self, using: PrimitiveSequence.decoder).asObservable().subscribe(handler).disposed(by: dBag)
    }

}
