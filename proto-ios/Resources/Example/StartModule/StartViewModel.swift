//
//  StartViewModel.swift
//  proto-ios
//
//  Created by Misha Fedorov on 14.07.2022.
//

import RxSwift

struct Example_StartViewModel: ViewModel, Example_StartViewModelProtocol {
 
    var name: Observable<String> = Observable<String>.of("Dima")
}
