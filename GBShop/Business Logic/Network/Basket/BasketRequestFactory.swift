//
//  BasketRequestFactory.swift
//  GBShop
//
//  Created by Polina Tikhomirova on 18.11.2022.
//

import Foundation
import Alamofire

protocol BasketRequestFactory {
    func payBasket(
        basketProducts: [[String: String]],
        userID: Int,
        completionHandler: @escaping (AFDataResponse<BasketResult>
        ) -> Void)
}

