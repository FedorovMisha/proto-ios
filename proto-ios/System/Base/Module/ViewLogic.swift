//
//  ViewLogic.swift
//  proto-ios
//
//  Created by Misha Fedorov on 02.07.2022.
//

import Foundation

protocol ViewLogic {
    func activate()
    func loadData(_ completionHandler: VoidClosure?)
}

extension ViewLogic {
    
    func activate() {
        
    }
    
    func loadData(_ completionHandler: VoidClosure?) {
        completionHandler?()
    }
}
