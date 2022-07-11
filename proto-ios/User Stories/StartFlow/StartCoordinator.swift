//
//  StartCoordinator.swift
//  proto-ios
//
//  Created by Misha Fedorov on 03.07.2022.
//

import UIKit
/// START COORDINATOR
class StartCoordinator: Coordinator {
    enum Flow {
        case start
        ///
        case second
        case third
    }
    
    private let navigationController = UINavigationController()
    
    var presenter: UINavigationController {
        return navigationController
    }
    
    func start() {
        navigate(to: .start)
    }
   

    func navigate(to: Flow) {
        switch to {
        case .start:
            presentModule(StartModule())
        ///
        case .second: break
            //
        case .third: break
            //
        }
    }
}


