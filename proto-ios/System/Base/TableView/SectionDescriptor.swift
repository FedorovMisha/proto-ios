//
//  SectionDescriptor.swift
//  proto-ios
//
//  Created by Misha Fedorov on 03.07.2022.
//

import UIKit

class SectionDescriptor {
    
    var rows: [CellDescriptor]
    var headerView: UIView?
    var footerView: UIView?
    
    init(rows: [CellDescriptor])    {
        self.rows = rows
        self.headerView = nil
        self.footerView = nil
    }
    
    init<H: UIView, F: UIView>(
        rows: [CellDescriptor],
        headerView: (() -> (H))? = nil,
        footerView: (() -> (F))? = nil
    )   {
        self.rows = rows
        self.headerView = headerView?()
        self.footerView = footerView?()
    }
}
