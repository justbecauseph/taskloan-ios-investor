//
//  String+.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation

extension String {
    
    
    private static let dateFormatter = DateFormatter()
    
    func asDate(_ format: DateTimeFormats, formatter: DateFormatter = String.dateFormatter) -> Date {
        formatter.dateFormat = format.rawValue
        return formatter.date(from: self)!
    }
    
}
