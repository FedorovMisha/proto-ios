//
//  ApplicationManager.swift
//  proto-ios
//
//  Created by Misha Fedorov on 27.07.2022.
//

import UIKit

struct ApplicationManager {
    
    var window: UIWindow?
    var rootViewController: UIViewController? {
        didSet {
            guard let rootViewController = rootViewController else {
                return
            }
            window?.rootViewController = rootViewController
            window?.makeKeyAndVisible()
        }
    }
    
    var onboardingCoordinator: ApplicationOnboardingCoordinator?

    mutating func startNewSession() {
        window = UIWindow(frame: UIScreen.main.bounds)
        startOnboarding()
    }
    
    private mutating func startOnboarding() {
        let navigationController = UINavigationController()
        
        onboardingCoordinator = ApplicationOnboardingCoordinator(navigationController: navigationController)
        
        rootViewController = navigationController
        
        onboardingCoordinator?.start()
    }
}
