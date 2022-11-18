//
//  AbstractErrorParser.swift
//  GBShop
//
//  Created by Polina Tikhomirova on 18.11.2022.
//

import Foundation

protocol AbstractErrorParser {
    func parse(
        _ result: Error
    ) -> Error
    func parse(
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?
    ) -> Error?
}
