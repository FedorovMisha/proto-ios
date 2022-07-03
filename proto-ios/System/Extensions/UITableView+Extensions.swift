//
//  TableViewDataProvider+Extensions.swift
//  proto-ios
//
//  Created by Misha Fedorov on 03.07.2022.
//

import UIKit

extension UITableView {
    func p_dequeueCell<Cell: UITableViewCell>(of cellType: Cell.Type, for indexPath: IndexPath) -> Cell {
        return dequeueReusableCell(withIdentifier: String(describing: cellType), for: indexPath) as! Cell
    }
    
    func p_registerCell<Cell: UITableViewCell>(cellType: Cell.Type) {
        let reuseIdentifier = String(describing: cellType)
        register(cellType, forCellReuseIdentifier: reuseIdentifier)
    }
}
