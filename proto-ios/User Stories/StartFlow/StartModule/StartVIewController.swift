//
//  StartVIewController.swift
//  proto-ios
//
//  Created by Misha Fedorov on 03.07.2022.
//

import Foundation
import UIKit

final class StartViewController: UIViewController, ViewInput, LogicContainer, StartViewInput {
    func changeBackgroundColor(color: UIColor) {
        view.backgroundColor = color
    }
    
    
    var logic: StartLogicOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logic.fetch()
    }
}
