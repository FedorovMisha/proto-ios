//
//  PushTransition.swift
//  proto-ios
//
//  Created by Misha Fedorov on 02.07.2022.
//

import UIKit

class PushTransition: Transition {
    private weak var navigationController: UINavigationController?
    
    func present(_ viewController: UIViewController, from: UIViewController?) {
        guard let from = from as? UINavigationController else {
            fatalError()
        }
        
        navigationController = from
        navigationController?.pushViewController(viewController, animated: true)
    }

    func close(_ viewController: UIViewController? = nil) {
        navigationController?.popViewController(animated: true)
    }
}
