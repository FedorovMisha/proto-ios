//
//  Module.swift
//  proto-ios
//
//  Created by Misha Fedorov on 02.07.2022.
//

import UIKit

protocol ViewContainer: AnyObject {
    associatedtype View
    
    var view: View? { get set }
}

protocol LogicContainer: AnyObject {
    associatedtype Logic
    
    var logic: Logic! { get set }
}

protocol ViewBinding {
    func bind<View: LogicContainer, Logic: ViewContainer>(view: View, logic: Logic)
}

extension ViewBinding {
    func bind<View: LogicContainer, Logic: ViewContainer>(view: View, logic: Logic) {
        guard
            let viewLogic = logic as? View.Logic,
            let logicView = view as? Logic.View
        else {
            fatalError()
        }
        
        view.logic = viewLogic
        logic.view = logicView
    }
}

protocol ModuleProtocol {
    typealias View = LogicContainer & ViewInput & UIViewController
    typealias Logic = ViewContainer & ViewLogic
    
    var viewController: UIViewController! { get }
    
    var screenTranstion: ScreenTransition { get }
    var transition: Transition { get }
}

class DefaultModule: ModuleProtocol, ViewBinding {
    var viewController: UIViewController!
    
    var screenTranstion: ScreenTransition {
        return .push
    }
    
    lazy var transition: Transition = screenTranstion.transition()
    
    init<T, E>(
        logicProvider: @escaping () -> T,
        viewProvider: @escaping () -> E
    ) where T : ViewContainer, T : ViewLogic, E : LogicContainer, E : ViewInput, E: UIViewController {
        let view = viewProvider()
        let logic = logicProvider()
        bind(view: view, logic: logic)
        viewController = view
        logic.loadData {
            logic.activate()
        }
    }
}
