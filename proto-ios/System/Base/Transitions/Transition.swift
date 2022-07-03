//
//  ScreenTransition.swift
//  proto-ios
//
//  Created by Misha Fedorov on 02.07.2022.
//

import UIKit

protocol Transition {
    func present(_ viewController: UIViewController, from: UIViewController?)
    func close(_ viewController: UIViewController?)
}
