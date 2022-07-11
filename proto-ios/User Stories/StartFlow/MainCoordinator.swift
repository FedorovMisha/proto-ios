//
//  ViewCoordinator.swift
//  proto-ios
//
//  Created by Мельник Дмитрий on 10.07.2022.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    func start() {
        <#code#>
    }
    
    enum Flow {
        case start
    }
    
    let navigationController = UINavigationController()
    
    var presenter: UIViewController {
        return navigationController
    }
    
    func firstVC() {
        navigate(to: .start)
    }
    
    func navigate(to: Flow) {
        switch to {
        case .start:
            presentModule(SecondModule())
        }
    }
}

