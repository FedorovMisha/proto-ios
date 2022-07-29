//
//  Coordinator.swift
//  proto-ios
//
//  Created by Misha Fedorov on 27.07.2022.
//

import Foundation

protocol Coordinator {
    associatedtype Flow
    
    func start()
    func navigate(to flow: Flow)
}

protocol CoordinatorContainer {
    associatedtype TCoordinator
    
    var coordinator: TCoordinator? { get set }
}
