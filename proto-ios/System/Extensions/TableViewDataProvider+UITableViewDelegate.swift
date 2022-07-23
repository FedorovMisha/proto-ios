//
//  TableViewDataProvider+UITableViewDelegate.swift
//  proto-ios
//
//  Created by Misha Fedorov on 03.07.2022.
//

import UIKit

extension TableViewDataProvider: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sections = sections[indexPath.section]
        let row = sections.rows[indexPath.row]
        row.selectedCell?(UITableViewCell())
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let section = sections[section]
        return section.header
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let section = sections[section]
        return section.footer
    }
}
