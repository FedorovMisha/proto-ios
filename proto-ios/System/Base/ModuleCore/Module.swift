//
//  Module.swift
//  proto-ios
//
//  Created by Misha Fedorov on 14.07.2022.
//

import Foundation

typealias BaseView = ViewController & ViewModelContainer

protocol Module {
    associatedtype TView = BaseView
    
    var modulePresentationStyle: ModulePresentationStyle { get }
    
    func build() -> TView
}

extension Module {
    func construct<
        V: BaseView,
        T: ViewModel
    >(
        viewProvider: () -> V,
        viewModelProvider: () -> T
    ) -> V {
        var view = viewProvider()
        let viewModel = viewModelProvider()
        
        guard let viewModel = viewModel as? V.TViewModel else {
            fatalError("[viewModel].Type != \(V.TViewModel.self)")
        }
        
        guard let _ = view as? TView else {
            fatalError("[view].Type != \(TView.self)")
        }
        
        view.viewModel = viewModel
        
        return view
    }
}
