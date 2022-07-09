//
//  SecondViewController.swift
//  proto-ios
//
//  Created by Мельник Дмитрий on 08.07.2022.
//

import Foundation

class SecondViewController: UIViewController, LogicContainer, ViewInput, StartInputProtocol {

    var logic: StartOutputProtocol!
    ///
    weak var coordinator: StartCoordinator?
    
    var tableView = UITableView()
    lazy var tableViewDataProvider = TableViewDataProvider(tableView: tableView)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        view.addFullSizeView(tableView)
        tableViewDataProvider.sections = [SectionDescriptor(rows: [
            CellDescriptor(configuration: {
                cell in
                
                cell.backgroundColor = .systemRed
            })
        ])]
    }
    
    func changeBackgroundColor() {
        view.backgroundColor = .white
    }
    
}
