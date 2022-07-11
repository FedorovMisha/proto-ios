//
//  StartCoordinatorProtocol.swift
//  proto-ios
//
//  Created by Мельник Дмитрий on 11.07.2022.
//

import Foundation

protocol StartCoordinatorProtocol {
    
    var coordinator: StartCoordinator? { get set }
}

protocol MainCoordinatorProtocol {
    
    var coordinator: MainCoordinator? { get set }
}
