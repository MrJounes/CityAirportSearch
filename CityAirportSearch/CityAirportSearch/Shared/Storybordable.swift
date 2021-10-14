//
//  Storybordable.swift
//  CityAirportSearch
//
//  Created by Unitbean on 15.10.2021.
//

import UIKit

protocol Storybordable {
    static func instantiate() -> Self
}

extension Storybordable where Self: UIViewController {
    
    static func instantiate() -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
