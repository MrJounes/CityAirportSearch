//
//  AppCoordinator.swift
//  CityAirportSearch
//
//  Created by Unitbean on 15.10.2021.
//

import UIKit

class AppCoordinator: BaseCoordinator {
    
    private let window: UIWindow
    private let navigationController: UINavigationController = {
        let navigationController = UINavigationController()
        let navigationBar = navigationController.navigationBar
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.barTintColor = UIColor.systemPink
        navigationBar.tintColor = .white
        navigationBar.titleTextAttributes = [
            NSAttributedString.Key.font: UIFont(name: "Avenir-Medium",
                                                size: 28.0) ?? UIFont.systemFont(ofSize: 28),
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]
        navigationBar.isTranslucent = false
        return navigationController
    }()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    override func start() {
        let searchCityCoordinator = SearchCityCoordinator(navigationController: navigationController)
        add(coordinator: searchCityCoordinator)
        searchCityCoordinator.start()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
