//
//  ErrorParser.swift
//  GBShop
//
//  Created by Polina Tikhomirova on 18.11.2022.
//

import Foundation

class ErrorParser: AbstractErrorParser {
    func parse(
        _ result: Error
    ) -> Error {
        return result
    }
    
    func parse(
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?
    ) -> Error? {
        return error
    }
}
