//
//  StartLogic.swift
//  proto-ios
//
//  Created by Misha Fedorov on 03.07.2022.
//

import Foundation

class StartLogic: ViewLogic, ViewContainer, StartLogicOutput {
    
    weak var view: StartViewInput?
    
    func fetch() {
        view?.changeBackgroundColor(color: .blue)
    }
}
