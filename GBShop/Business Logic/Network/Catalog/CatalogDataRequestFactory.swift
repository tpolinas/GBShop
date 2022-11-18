//
//  CatalogDataRequestFactory.swift
//  GBShop
//
//  Created by Polina Tikhomirova on 18.11.2022.
//

import Foundation
import Alamofire

protocol CatalogDataRequestFactory {
    func getCatalogData(
        pageNumber: Int,
        idCategory: Int,
        completionHandler: @escaping (AFDataResponse<CatalogDataResult>
        ) -> Void
    )
}
