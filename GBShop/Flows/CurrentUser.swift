//
//  CurrentUser.swift
//  GBShop
//
//  Created by Polina Tikhomirova on 18.11.2022.
//

import Foundation

final class CurrentUser {
    static let shared = CurrentUser()
    var user: User?
    
    private init() {}
}

