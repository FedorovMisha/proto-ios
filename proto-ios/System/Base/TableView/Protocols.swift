//
//  Protocols.swift
//  proto-ios
//
//  Created by Мельник Дмитрий on 15.07.2022.
//

import Foundation
import UIKit



public protocol NAItemViewModel: IdentifiableViewModelType {
}


public protocol NAConfigurable where Self: UIView {
    associatedtype ItemViewModel
    var viewModel: ItemViewModel? { get set } //observer
}


public protocol IdentifiableViewModelType: EquatableViewModelType {
    var identifier: String { get }
}

public protocol EquatableViewModelType {
    func isEqual(_ other: EquatableViewModelType) -> Bool
}


public protocol NAMap: Mapping {
    
    associatedtype Value
    associatedtype ResolvingKey
    associatedtype RegistrationKey
    
    var storage: MapStorage<Value> { get }
    
    func resolve(for key: ResolvingKey) -> Value?
    func register(_ value: Value, for key: RegistrationKey)
}


public protocol ViewModelDataProvider {
    func numberOfSectons() -> Int
    func numberOfRows(inSection section: Int) -> Int
    func itemForRow(atIndexPath indexPath: IndexPath) -> NAItemViewModel
    func title(forSection section: Int) -> String?
    func sectionIndexTitles() -> [String]?
}

class TableViewDataSource: NSObject {
    let dataProvider: ViewModelDataProvider
    
    init(dataProvider: ViewModelDataProvider) {
        self.dataProvider = dataProvider
    }
    
}

extension TableViewDataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataProvider.numberOfRows(inSection: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            
            let viewModel = dataProvider.itemForRow(atIndexPath: indexPath),
            
            let fabric = c
    }
    
    
}

