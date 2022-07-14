//
//  CellDescriptor.swift
//  proto-ios
//
//  Created by Misha Fedorov on 03.07.2022.
//

import UIKit

class CellDescriptor {
    var cellClass: UITableViewCell.Type
    var reuseIdentifier: String
    var configuration: (UITableViewCell) -> Void
    
    init<Cell: UITableViewCell>(
        configuration: @escaping (Cell) -> Void,
        isVisable: Bool = true,
        reuseIdentifier: String = String(describing: type(of: Cell.self))
    ) {
        cellClass = Cell.self
        self.reuseIdentifier = reuseIdentifier
        
        self.configuration = {
            configuration($0 as! Cell)
        }
    }
}

var fu = CellDescriptor { Cell in
    Cell.reuseIdentifier
}
