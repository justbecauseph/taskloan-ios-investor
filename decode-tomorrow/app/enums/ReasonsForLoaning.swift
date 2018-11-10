//
//  ReasonsForLoaning.swift
//  decode-tomorrow
//
//  Created by Mark on 11/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation

//Payment of Tuition Fee
//Purchase of School Materials
//Food and Transportation
//Payment of Rent/Utility Bills
//Personal
//Others (please specify)

enum ReasonsForLoaning: CaseIterable {
    case tuitionFee
    case schoolMaterials
    case foodAndTranspo
    case utilityBills
    case personal
    case others
    
    var pickerText: String {
        switch self {
        case .tuitionFee:
            return "Payment of Tuition Fee"
        case .schoolMaterials:
            return "School Materials"
        case .foodAndTranspo:
            return "Food and Transpo"
        case .utilityBills:
            return "Utility Bills"
        case .personal:
            return "Personal"
        case .others:
            return "Others (Please specify.)"
        }
    }
}
