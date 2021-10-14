//
//  SearchAirportViewController.swift
//  CityAirportSearch
//
//  Created by Unitbean on 14.10.2021.
//

import UIKit
import RxSwift
import RxDataSources

class SearchCityViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    private var viewModel: SearchCityViewPresentable!
    var viewModelBuilder: SearchCityViewPresentable.ViewModelBuilder!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Airports"
        viewModel =  viewModelBuilder((
            searchText: searchTextField.rx.text.orEmpty.asDriver(), ()
        ))
    }
}

extension SearchCityViewController: Storybordable {
    
}
