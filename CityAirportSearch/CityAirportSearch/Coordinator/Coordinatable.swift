//
//  Coordinatable.swift
//  CityAirportSearch
//
//  Created by Unitbean on 15.10.2021.
//

protocol Coordinatable: AnyObject {
    var childCoordinator: [Coordinatable] { get set }
    func start()
}

extension Coordinatable {
    
    func add(coordinator: Coordinatable) -> Void {
        childCoordinator.append(coordinator)
    }
    
    func remove(coordinator: Coordinatable) -> Void {
        childCoordinator = childCoordinator.filter { $0 !== coordinator }
    }
}
