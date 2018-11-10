//
//  RegistrationParams.swift
//  decode-tomorrow
//
//  Created by Mark on 10/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation

struct RegistrationParams: Encodable {
    var role: String
    var mobileNumber: String
    var password: String
    var email: String
    var name: String
    var address: String
    var school: String
}
