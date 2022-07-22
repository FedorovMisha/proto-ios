//
//  SectionDescriptor.swift
//  proto-ios
//
//  Created by Misha Fedorov on 03.07.2022.
//

import Foundation
import UIKit

class SectionDescriptor {
    
    var rows: [CellDescriptor]
    
    var header: UIView?
    var footer: UIView?
    
    init(rows: [CellDescriptor]) {
        self.rows = rows
        self.header = nil
        self.footer = nil
    }
    
    init<H: UIView, F: UIView>(rows: [CellDescriptor], headerView: (() -> (H))? = nil, footerView: (() -> (F))? = nil) {
        self.rows = rows
        self.header = headerView?()
        self.footer = footerView?()
    }
}
