//
//  RegisterRequestFactory.swift
//  GBShop
//
//  Created by Polina Tikhomirova on 18.11.2022.
//

import Foundation
import Alamofire

protocol RegisterRequestFactory {
    func register(
        userData: UserData,
        completionHandler: @escaping
    (AFDataResponse<RegisterResult>
    ) -> Void)
}
