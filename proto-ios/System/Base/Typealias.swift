//
//  Typealias.swift
//  proto-ios
//
//  Created by Misha Fedorov on 02.07.2022.
//

import Foundation

typealias VoidClosure = () -> Void
typealias ViewModelProvider<T: ViewModel> = () -> T
typealias ViewProvider<T: ViewController & ViewModelContainer> = () -> T

//typealias ModuleInheritance = Module & ViewModelProviderContainer & ViewProviderContainer
