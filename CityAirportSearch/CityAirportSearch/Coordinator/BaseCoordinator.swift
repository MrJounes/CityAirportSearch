//
//  BaseCoordinator.swift
//  CityAirportSearch
//
//  Created by Unitbean on 15.10.2021.
//

class BaseCoordinator: Coordinatable {
    
    var childCoordinator: [Coordinatable] = []
    
    func start() {
        fatalError("Child should implement 'start'.")
    }
}
