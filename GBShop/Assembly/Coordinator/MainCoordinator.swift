//
//  MainCoordinator.swift
//  GBShop
//
//  Created by Polina Tikhomirova on 18.11.2022.
//

import UIKit

final class MainCoordinator: Coordinator {
    
    override func start() {
        showTabBar()
    }
    
    func showTabBar() {
        guard let tabBarVC = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "MainTabBarController") as? MainTabBarController
        else { return }
        tabBarVC.onLogout = { [weak self] in
            self?.onFinishFlow?()
        }
        setAsRoot(tabBarVC)
    }
}

