//
//  AuthRequestFactory.swift
//  GBShop
//
//  Created by Polina Tikhomirova on 18.11.2022.
//

import Foundation
import Alamofire

protocol AuthRequestFactory {
    func login(
        userName: String,
        password: String,
        completionHandler: @escaping (AFDataResponse<LoginResult>
        ) -> Void)
    
    func logout(
        id: Int,
        completionHandler: @escaping (AFDataResponse<LogoutResult>
        ) -> Void)
}

