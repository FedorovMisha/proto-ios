//
//  StartProtocols.swift
//  proto-ios
//
//  Created by Misha Fedorov on 14.07.2022.
//

import RxSwift

protocol Example_StartViewModelProtocol {
    var name: Observable<String> { get }
}
