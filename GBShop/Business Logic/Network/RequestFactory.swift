//
//  RequestFactory.swift
//  GBShop
//
//  Created by Polina Tikhomirova on 18.11.2022.
//

import Foundation
import Swinject

class RequestFactory {
    let container: Container
    
    init(container: Container) {
        self.container = container
    }
    
    func makeAuthRequestFaсtory() -> AuthRequestFactory {
        return container.resolve(AuthRequestFactory.self)!
    }
    
    func makeRegisterRequestFaсtory() -> RegisterRequestFactory {
        return container.resolve(RegisterRequestFactory.self)!
    }
    
    func makeChangeDataRequestFaсtory() -> ChangeDataRequestFactory {
        return container.resolve(ChangeDataRequestFactory.self)!
    }
    
    func makeCatalogDataRequestFaсtory() -> CatalogDataRequestFactory {
        return container.resolve(CatalogDataRequestFactory.self)!
    }
    
    func makeReviewRequestFactory() -> ReviewRequestFactory {
        return container.resolve(ReviewRequestFactory.self)!
    }
    
    func makeBasketRequestFactory() -> BasketRequestFactory {
        return container.resolve(BasketRequestFactory.self)!
    }
}

