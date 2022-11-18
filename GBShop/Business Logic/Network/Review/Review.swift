//
//  Review.swift
//  GBShop
//
//  Created by Polina Tikhomirova on 18.11.2022.
//

import Foundation
import Alamofire

class Review: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    var baseUrl: URL { BaseURL.shared.baseURL }
    
    init(
        errorParser: AbstractErrorParser,
        sessionManager: Session,
        queue: DispatchQueue = DispatchQueue.global(qos: .utility)) {
            self.errorParser = errorParser
            self.sessionManager = sessionManager
            self.queue = queue
        }
}
extension Review: ReviewRequestFactory {
    func fetchReviews(
        idProduct: Int,
        completionHandler: @escaping (AFDataResponse<ReviewsResult>) -> Void) {
            let requestModel = ReviewsFetchModel(baseUrl: baseUrl, idProduct: idProduct)
            self.request(request: requestModel, completionHandler: completionHandler)
        }
    
    func addReview(
        idUser: Int,
        text: String,
        completionHandler: @escaping (AFDataResponse<ReviewResult>) -> Void) {
            let requestModel = ReviewAddModel(baseUrl: baseUrl, idUser: idUser, text: text)
            self.request(request: requestModel, completionHandler: completionHandler)
        }
    
    func removeReview(
        idComment: Int,
        completionHandler: @escaping (AFDataResponse<ReviewResult>) -> Void) {
            let requestModel = ReviewRemoveModel(baseUrl: baseUrl, idComment: idComment)
            self.request(request: requestModel, completionHandler: completionHandler)
        }
}

extension Review {
    struct ReviewsFetchModel: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = "fetchReviews"
        let idProduct: Int
        var parameters: Parameters? {
            return [
                "id_product": idProduct
            ]
        }
    }
    
    struct ReviewAddModel: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "addReview"
        let idUser: Int
        let text: String
        var parameters: Parameters? {
            return [
                "id_user": idUser,
                "text": text
            ]
        }
    }
    
    struct ReviewRemoveModel: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "removeReview"
        let idComment: Int
        var parameters: Parameters? {
            return [
                "id_comment": idComment
            ]
        }
    }
}

