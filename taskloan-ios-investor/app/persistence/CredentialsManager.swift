//
//  CredentialsManager.swift
//  taskloan-ios-investor
//
//  Created by AQUINO FRANCISCO on 11/10/18.
//  Copyright © 2018 AQUINO FRANCISCO. All rights reserved.
//

import Foundation

protocol CredentialsManagerTokenStorage {
    static var tokenStorageKey: String { get }
    func storeToken(_ token: String)
    func getToken() -> String?
    func clearToken()
}

class CredentialsManager {
    
    static let shared = CredentialsManager(UserDefaults.standard)
    
    private let tokenStorage: CredentialsManagerTokenStorage
    
    var token: String? {
        return self.tokenStorage.getToken()
    }
    
    init(_ tokenStorage: CredentialsManagerTokenStorage) {
        self.tokenStorage = tokenStorage
    }
    
    func store(_ params: LoginParams) {
        let combined = params.email + ":" + params.password
        let token = combined.data(using: .utf8)!.base64EncodedString()
        self.tokenStorage.storeToken(token)
    }
    
    func clearToken() {
        tokenStorage.clearToken()
    }
    
}

extension UserDefaults: CredentialsManagerTokenStorage {
    
    static var tokenStorageKey: String = "tokenStorageKey"
    
    func getToken() -> String? {
        return self.string(forKey: UserDefaults.tokenStorageKey)
    }
    
    func storeToken(_ token: String) {
        return self.set(token, forKey: UserDefaults.tokenStorageKey)
    }
    
    func clearToken() {
        self.removeObject(forKey: UserDefaults.tokenStorageKey)
    }
    
}

