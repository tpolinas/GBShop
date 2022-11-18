//
//  RequestSession.swift
//  GBShop
//
//  Created by Polina Tikhomirova on 18.11.2022.
//

import Foundation
import Alamofire

class RequestSession {
    func session() -> Session {
        let configuration = URLSessionConfiguration.default
        configuration.httpShouldSetCookies = false
        configuration.headers = .default
        let manager = Session(configuration: configuration)
        return manager
    }
}

