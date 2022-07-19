//
//  DataSource.swift
//  proto-ios
//
//  Created by Misha Fedorov on 14.07.2022.
//

import Foundation

protocol DataSource {}

protocol DataSourceContainer {
    associatedtype TDataSource = DataSource
    
    var dataSource: TDataSource { get set }
}
