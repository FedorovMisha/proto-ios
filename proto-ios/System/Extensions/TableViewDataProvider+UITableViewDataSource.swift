//
//  TableViewDataProvider+UITableViewDataSource.swift
//  proto-ios
//
//  Created by Misha Fedorov on 03.07.2022.
//

import UIKit

extension TableViewDataProvider: UITableViewDataSource {
    
    private func registerCellIfNeeded(from descriptor: CellDescriptor, in tableView: UITableView) {
        guard !registeredCellIdentifiers.contains(descriptor.reuseIdentifier) else {
            return
        }
        registeredCellIdentifiers.insert(descriptor.reuseIdentifier)
        tableView.p_registerCell(cellType: descriptor.cellClass)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = sections[indexPath.section]
        let row = section.rows[indexPath.row]
        
        registerCellIfNeeded(from: row, in: tableView)
        let cell = tableView.p_dequeueCell(of: row.cellClass, for: indexPath)
        row.configuration(cell)
        
        return cell
    }
}
