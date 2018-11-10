//
//  Date+.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation

extension Date {
    
    private static let dateFormatter = DateFormatter()
    
    func asString(_ format: DateTimeFormats, formatter: DateFormatter = Date.dateFormatter) -> String {
        formatter.dateFormat = format.rawValue
        return formatter.string(from: self)
    }
    
}
