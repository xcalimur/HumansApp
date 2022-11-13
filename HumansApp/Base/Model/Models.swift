//
//  Models.swift
//  HumansApp
//
//  Created by Cami Mata on 11/12/22.
//
import Foundation
//used across features

// MARK: - User
struct User: Codable {
    let id: Int
    let email, firstName, lastName: String
    let avatar: String
}

// MARK: - Support
struct Support: Codable {
    let url: String
    let text: String
}
