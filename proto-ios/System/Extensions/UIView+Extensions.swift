//
//  View+Extensions.swift
//  proto-ios
//
//  Created by Misha Fedorov on 03.07.2022.
//

import UIKit
import SnapKit

extension UIView {
    func addFullSizeView(_ view: UIView) {
        self.addSubview(view)
        view.snp.makeConstraints {
            $0.top.leading.trailing.bottom.equalToSuperview()
        }
    }
}
