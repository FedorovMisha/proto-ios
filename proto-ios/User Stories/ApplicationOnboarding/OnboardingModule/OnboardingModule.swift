//
//  OnboardingModule.swift
//  proto-ios
//
//  Created by Misha Fedorov on 29.07.2022.
//

import Foundation

struct OnboardingModule: Module {
    var modulePresentationStyle: ModulePresentationStyle {
        return .push
    }
    
    var coordinator: ApplicationOnboardingCoordinator

    func build() -> OnboardingViewController {
        return construct {
            return OnboardingViewController()
        } viewModelProvider: {
            return OnboardingViewModel()
        } coordinatorProvider: {
            return coordinator
        }
    }
}
