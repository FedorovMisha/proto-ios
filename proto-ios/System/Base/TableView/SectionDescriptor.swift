//
//  SectionDescriptor.swift
//  proto-ios
//
//  Created by Misha Fedorov on 03.07.2022.
//

import Foundation

class SectionDescriptor {
    
    var rows: [CellDescriptor]
    
    init(rows: [CellDescriptor]) {
        self.rows = rows
    }
}
