//
//  ScreenTransition.swift
//  proto-ios
//
//  Created by Misha Fedorov on 02.07.2022.
//

enum ScreenTransition {
    case push
}

extension ScreenTransition {
    func transition() -> Transition {
        switch self {
        case .push:
            return PushTransition()
        }
    }
}
