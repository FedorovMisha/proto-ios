//
//  StartModule.swift
//  proto-ios
//
//  Created by Misha Fedorov on 03.07.2022.
//

import Foundation

class StartModule: DefaultModule {
    init() {
        super.init {
            return StartLogic()
        } viewProvider: {
            return StartViewController()
        }

    }
}
