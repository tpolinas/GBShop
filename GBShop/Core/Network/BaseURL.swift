//
//  BaseURL.swift
//  GBShop
//
//  Created by Polina Tikhomirova on 18.11.2022.
//

import Foundation

class BaseURL {
    static let shared = BaseURL()
    
    let baseURL = URL(string: "https://raw.githubusercontent.com/GeekBrainsTutorial/online-store-api/master/")!
    let testURL = URL(string: "http://127.0.0.1:8080")!
    
    private init() {}
}
