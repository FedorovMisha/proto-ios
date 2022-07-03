//
//  StartViewController.swift
//  proto-ios
//
//  Created by Misha Fedorov on 03.07.2022.
//

import UIKit

class StartViewController: UIViewController, LogicContainer, ViewInput, StartInputProtocol {

    var logic: StartOutputProtocol!
    
    var tableView = UITableView()
    lazy var tableViewDataProvider = TableViewDataProvider(tableView: tableView)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        view.addFullSizeView(tableView)
        tableViewDataProvider.sections = [SectionDescriptor(rows: [
            CellDescriptor(configuration: {
                cell in
                
                cell.backgroundColor = .red
            })
        ])]
    }
    
    func changeBackgroundColor() {
        view.backgroundColor = .white
    }
    
}
