//
//  Product.swift
//  GBShop
//
//  Created by Polina Tikhomirova on 18.11.2022.
//

import Foundation

struct Product: Codable {
    let idProduct: UInt
    let productName: String
    let price: Decimal
    
    enum CodingKeys: String, CodingKey {
        case idProduct = "id_product"
        case productName = "product_name"
        case price
    }
}

extension Product: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.idProduct)
    }
}
