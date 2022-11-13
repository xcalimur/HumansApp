//
//  UserDetailResponse.swift
//  HumansApp
//
//  Created by Cami Mata on 11/12/22.
//
import Foundation
// MARK: - UserDetailResponse
struct UserDetailResponse: Codable {
    let data: User
    let support: Support
}
