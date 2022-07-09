//
//  SecondLogic.swift
//  proto-ios
//
//  Created by Мельник Дмитрий on 08.07.2022.
//

import Foundation

class SecondLogic: ViewLogic, ViewContainer, StartOutputProtocol {
    func fetch() {
        view?.changeBackgroundColor()
    }
    
    weak var view: SecondViewController?

    func activate() {
        fetch()
    }
}
