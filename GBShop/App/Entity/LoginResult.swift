//
//  LoginResult.swift
//  GBShop
//
//  Created by Polina Tikhomirova on 18.11.2022.
//

import Foundation

struct LoginResult: Codable {
    let result: Int
    let user: User?
    let errorMessage: String?
}
