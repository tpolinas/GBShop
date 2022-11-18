//
//  ReviewRequestFactory.swift
//  GBShop
//
//  Created by Polina Tikhomirova on 18.11.2022.
//

import Foundation
import Alamofire

protocol ReviewRequestFactory {
    func fetchReviews(
        idProduct: Int,
        completionHandler: @escaping (AFDataResponse<ReviewsResult>) -> Void)
    func addReview(
        idUser: Int,
        text: String,
        completionHandler: @escaping (AFDataResponse<ReviewResult>) -> Void)
    func removeReview(
        idComment: Int,
        completionHandler: @escaping (AFDataResponse<ReviewResult>) -> Void)
}

