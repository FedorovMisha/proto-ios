//
//  StartVIewController.swift
//  proto-ios
//
//  Created by Misha Fedorov on 03.07.2022.
//

import Foundation
import UIKit

final class StartViewController: UIViewController, ViewInput, LogicContainer, StartViewInput {
    
    var logic: StartLogicOutput!
    var tableView = UITableView()
    
    lazy var tableViewDataProvider = TableViewDataProvider(tableView: tableView)
    
    func changeBackgroundColor(color: UIColor) {
        view.backgroundColor = color
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addFullSizeView(tableView)
        
        tableViewDataProvider.sections = [SectionDescriptor.init(rows: [CellDescriptor.init(configuration: { Cell in
            
            Cell.backgroundColor = .systemRed
                })]
            )]
        logic.fetch()
    }
}

