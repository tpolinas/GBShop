//
//  ChangeDataRequestFactory.swift
//  GBShop
//
//  Created by Polina Tikhomirova on 18.11.2022.
//

import Foundation
import Alamofire

protocol ChangeDataRequestFactory {
    func changeUserData(
        userData: UserData,
        completionHandler: @escaping
    (AFDataResponse<ChangeDataResult>
    ) -> Void)
}
