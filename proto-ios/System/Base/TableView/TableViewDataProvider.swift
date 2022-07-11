//
//  TableViewDataProvider.swift
//  proto-ios
//
//  Created by Misha Fedorov on 03.07.2022.
//

import UIKit

class TableViewDataProvider: NSObject {
    
    private var tableView: UITableView
    var registeredCellIdentifiers = Set<String>()
    var sections: [SectionDescriptor] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    init(tableView: UITableView) {
        self.tableView = tableView
        super.init()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.reloadData()
    }
    
    // create method to allow select a cell
    // create method to allow select a cell

}
