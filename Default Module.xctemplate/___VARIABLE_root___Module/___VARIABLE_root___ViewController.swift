//___FILEHEADER___

import UIKit
import RxSwift

class ___VARIABLE_root___ViewController: ViewController, TargetView, ViewModelContainer {

    // MARK: - Public vars

    let disposeBag = DisposeBag()
    var viewModel: ___VARIABLE_root___ViewModelProtocol!

    // MARK: - Private vars

    // MARK: - Overrides

    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }

    // MARK: - Public

    func bind() {

    }

    // MARK: - Private
}

fileprivate enum Constants {
    static let topInset = 24
}
