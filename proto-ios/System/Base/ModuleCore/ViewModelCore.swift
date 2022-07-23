//
//  ViewModelCore.swift
//  proto-ios
//
//  Created by Misha Fedorov on 14.07.2022.
//

import Foundation

protocol ViewModel {}

protocol ViewModelContainer {
    associatedtype TViewModel
    
    var viewModel: TViewModel! { get set }
    
    func bind()
}
