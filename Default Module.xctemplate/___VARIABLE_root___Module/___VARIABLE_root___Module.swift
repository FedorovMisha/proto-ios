//___FILEHEADER___

import Foundation

struct ___VARIABLE_root___Module: Module {
    var modulePresentationStyle: ModulePresentationStyle {
        return .push
    }

    func build() -> ___VARIABLE_root___ViewController {
        return construct {
            return ___VARIABLE_root___ViewController()
        } viewModelProvider: {
            return ___VARIABLE_root___ViewModel()
        }
    }
}
