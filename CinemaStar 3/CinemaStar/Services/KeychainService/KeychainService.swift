// KeychainService.swift
// Copyright © RoadMap. All rights reserved.

import Foundation
import KeychainSwift

/// Кейчен для работы с API ключом.
class KeychainService {
    // MARK: - Public Properties

    static let shared = KeychainService()

    var token: String? {
        get {
            keychain.get(S.keychainTokenKey)
        }
        set {
            if let newValue = newValue {
                keychain.set(newValue, forKey: S.keychainTokenKey)
            } else {
                keychain.delete(S.keychainTokenKey)
            }
        }
    }

    // MARK: - Private Properties

    private let keychain = KeychainSwift()

    // MARK: - Initializers

    private init() {}
}
