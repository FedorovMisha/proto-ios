//
//  StartLogic.swift
//  proto-ios
//
//  Created by Misha Fedorov on 03.07.2022.
//

import Foundation

class StartLogic: ViewLogic, ViewContainer, StartOutputProtocol {
    func fetch() {
        view?.changeBackgroundColor()
    }
    
    weak var view: StartViewController?

    func activate() {
        fetch()
    }
}
