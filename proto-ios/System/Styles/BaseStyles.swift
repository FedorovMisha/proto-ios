//
//  BaseStyles.swift
//  proto-ios
//
//  Created by Misha Fedorov on 27.07.2022.
//

import UIKit

extension ViewStyle where T: UIView {
    static var baseStyle: ViewStyle<UIView> {
        return .init {
            
            $0.backgroundColor = .clear
        }
    }
}
