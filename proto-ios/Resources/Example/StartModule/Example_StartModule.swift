//
//  StartModule.swift
//  proto-ios
//
//  Created by Misha Fedorov on 14.07.2022.
//

import Foundation

struct Example_StartModule: Module {
    var modulePresentationStyle: ModulePresentationStyle {
        return .push
    }
    
    let title: String
    
    func build() -> Example_StartViewController {
        return construct {
            return Example_StartViewController()
        } viewModelProvider: {
            return Example_StartViewModel()
        }
    }
}
