//
//  MainTabBarController.swift
//  GBShop
//
//  Created by Polina Tikhomirova on 18.11.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    var onLogout: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let navController = viewControllers?.first as? UINavigationController,
              let controller = navController.viewControllers.first as? RegisterController
        else { return }
        }
}
