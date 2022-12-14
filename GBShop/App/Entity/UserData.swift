//
//  UserData.swift
//  GBShop
//
//  Created by Polina Tikhomirova on 18.11.2022.
//

import Foundation

struct UserData {
    let id: Int
    let username: String
    let password: String
    let email: String
    let gender: Gender
    let creditCard: String
    let bio: String
}

enum Gender: String {
    case male = "m"
    case female = "f"
}

