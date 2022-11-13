//
//  UsersResponse.swift
//  HumansApp
//
//  Created by Cami Mata on 11/12/22.
//
import Foundation
// MARK: - UsersResponse
struct UsersResponse: Codable {
    let page, perPage, total, totalPages: Int
    let data: [User]
    let support: Support
}
