//
//  SecondModule.swift
//  proto-ios
//
//  Created by Мельник Дмитрий on 08.07.2022.
//

import Foundation

class SecondModule: DefaultModule {
    init() {
        super.init {
            return ()
        } viewProvider: {
            return SecondViewController()
        }

    }
}

