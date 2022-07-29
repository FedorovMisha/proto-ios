//
//  ViewController+Extensions.swift
//  proto-ios
//
//  Created by Misha Fedorov on 29.07.2022.
//

import UIKit

extension ViewController {
    func buildTableView() -> UITableView {
        let tableView = UITableView()
        
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        return tableView
    }
}
