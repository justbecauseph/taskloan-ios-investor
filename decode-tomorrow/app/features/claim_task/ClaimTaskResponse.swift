//
//  ClaimTaskResponse.swift
//  decode-tomorrow
//
//  Created by Mark on 11/11/2018.
//  Copyright © 2018 Just Because. All rights reserved.
//

import Foundation

struct ClaimTaskResponse: Decodable {
    
    let id: Int?
    let userId: Int?
    let claimedByUserId: Int?
    let amount: String?
    let title: String?
    let description: String?
    let category: String?
    let duration: String?
    let completedAt: String?
    let createdAt: String?
    let updatedAt: String?
    
    let claimedByUser: ClaimedByUserType
}

struct ClaimedByUserType: Decodable {
    let id: Int
    let role: String
    let name: String
    let mobileNumber: String
    let email: String
    let address: String
    let school: String
    let id_photo: String
    let verifiedAt: String
    let createdAt: String
    let updatedAt: String
}
