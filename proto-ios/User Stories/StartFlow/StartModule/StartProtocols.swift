//
//  StartProtocols.swift
//  proto-ios
//
//  Created by Misha Fedorov on 03.07.2022.
//

import UIKit

protocol StartLogicOutput {
    func fetch()
}

protocol StartViewInput: AnyObject {
    func changeBackgroundColor(color: UIColor)
}
