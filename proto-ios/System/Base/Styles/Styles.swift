//
//  Styles.swift
//  proto-ios
//
//  Created by Misha Fedorov on 27.07.2022.
//

import UIKit

protocol Stylable {
    init()
}

struct ViewStyle<T> {
    let style: (T) -> Void
}

extension ViewStyle {
    
    func compose(with style: ViewStyle<T>) -> ViewStyle<T> {
        return ViewStyle {
            self.style($0)
            style.style($0)
        }
    }
    
    static func +(left: ViewStyle<T>, right: ViewStyle<T>) -> ViewStyle<T> {
        return left.compose(with: right)
    }
}

extension Stylable {
    
    static func with(style: ViewStyle<Self>) -> Self {
        return Self.init(style: style)
    }
    
    static func with(with style: @escaping (Self) -> Void) -> Self {
        return Self.init(with: style)
    }
    
    init(style: ViewStyle<Self>) {
        self.init()
        apply(style: style)
    }
    
    init(with style: @escaping (Self) -> Void) {
        self.init()
        let style = ViewStyle<Self>(style: style)
        apply(style: style)
    }
    
    @discardableResult
    func apply(style: ViewStyle<Self>) -> Self {
        style.style(self)
        return self
    }
    
    @discardableResult
    func tryApply<T: Stylable>(style: ViewStyle<T>, _ type: T.Type) -> Self {
        guard let styleTarget = self as? T else { fatalError() }
        styleTarget.apply(style: style)
        
        return self
    }
}

extension UIView: Stylable {}
