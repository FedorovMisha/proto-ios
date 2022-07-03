//
//  Cordinator.swift
//  proto-ios
//
//  Created by Misha Fedorov on 02.07.2022.
//

import UIKit

protocol Coordinator {
    associatedtype Flow
    associatedtype Presenter = UIViewController
    
    var presenter: Presenter { get }
    
    func start()
    func navigate(to: Flow)
}

extension Coordinator {
    func presentModule(_ module: ModuleProtocol) {
        let transition =  module.transition
        guard
            let controller = module.viewController,
            let from = presenter as? UINavigationController
        else {
            return
        }
        transition.present(controller, from: from)
    }
}
