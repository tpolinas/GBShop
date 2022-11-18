//
//  EventLogger.swift
//  GBShop
//
//  Created by Polina Tikhomirova on 18.11.2022.
//

import Foundation

class EventLogger {
    enum Event: String {
        case loginSuccess = "login success"
        case loginFailure = "login failure"
        case registrationSuccess = "registration success"
        case registrationFailure = "registration failure"
        case openCatalog = "open catalog"
        case openProduct = "open product"
        case addProduct = "add product"
        case payBasket = "pay basket"
    }
}

