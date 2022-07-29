//
//  ApplicationOnboardingCoordinator.swift
//  proto-ios
//
//  Created by Misha Fedorov on 29.07.2022.
//

import UIKit

struct ApplicationOnboardingCoordinator: Coordinator {
    enum Flow {
        case onboardingPage2
        case signInFlow
        case signUpFlow
    }
    
    let navigationController: UINavigationController
    
    func start() {
        let module = OnboardingModule(coordinator: self)
        let controller = module.build()
        
        navigationController.setViewControllers([controller], animated: true)
    }
    
    func navigate(to flow: Flow) {
        
    }
}
