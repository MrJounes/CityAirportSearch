//
//  SearchCityCoordinator.swift
//  CityAirportSearch
//
//  Created by Unitbean on 15.10.2021.
//

import UIKit

class SearchCityCoordinator: BaseCoordinator {
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let viewController = SearchCityViewController.instantiate()
        viewController.viewModelBuilder = {
            SearchityViewModel(input: $0)
        }
        navigationController.pushViewController(viewController, animated: true)
    }
}
