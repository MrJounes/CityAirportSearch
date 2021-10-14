//
//  SearchCityViewModel.swift
//  CityAirportSearch
//
//  Created by Unitbean on 14.10.2021.
//

import RxCocoa

protocol SearchCityViewPresentable {
    typealias Input = (
        searchText: Driver<String>, ()
    )
    typealias Output = ()
    typealias ViewModelBuilder = (SearchCityViewPresentable.Input) -> SearchCityViewPresentable
    
    var input: SearchCityViewPresentable.Input { get }
    var output: SearchCityViewPresentable.Output { get }
}

class SearchityViewModel: SearchCityViewPresentable {
    
    var input: SearchCityViewPresentable.Input
    var output: SearchCityViewPresentable.Output
    
    init(input: SearchCityViewPresentable.Input) {
        self.input = input
        output = SearchityViewModel.output(input: self.input)
    }
}

private extension SearchityViewModel {
    
    static func output(input: SearchCityViewPresentable.Input) -> SearchCityViewPresentable.Output {
        return ()
    }
}
