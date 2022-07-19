//
//  StartViewController.swift
//  proto-ios
//
//  Created by Misha Fedorov on 14.07.2022.
//

import Foundation
import UIKit
import RxSwift

class Example_StartViewController: ViewController,
                                   TargetView,
                                   ViewModelContainer {
    let disposeBag = DisposeBag()
    var viewModel: Example_StartViewModelProtocol!
    let v1 = UIView()
    let v2 = UIView()
    let v3 = UIView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        bind()
    }
    
    func bind() {
        viewModel.name
            .subscribe(onNext: {
                [weak v1] title in
                
                v1?.backgroundColor = .red
            }).disposed(by: disposeBag)
    }
}
