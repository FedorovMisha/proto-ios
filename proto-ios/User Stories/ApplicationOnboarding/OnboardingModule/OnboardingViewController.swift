//
//  OnboardingViewController.swift
//  proto-ios
//
//  Created by Misha Fedorov on 29.07.2022.
//

import UIKit
import RxSwift

class OnboardingViewController: ViewController, TargetView, ViewModelContainer {

    // MARK: - Public vars

    let disposeBag = DisposeBag()
    var viewModel: OnboardingViewModelProtocol!

    // MARK: - Private vars
    
    private lazy var tableView: UITableView = buildTableView()

    // MARK: - Overrides

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Public

    func bind() {

    }

    // MARK: - Private
}

fileprivate enum Constants {
    static let topInset = 24
}
