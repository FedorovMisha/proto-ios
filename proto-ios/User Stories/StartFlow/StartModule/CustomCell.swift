//
//  CustomCell.swift
//  proto-ios
//
//  Created by Misha Fedorov on 03.07.2022.
//

import UIKit

class CustomCell: UITableViewCell {
    
    var slider = UISlider()
    
    var value: Float = 0.0 {
        didSet {
            slider.value = value
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(slider)
        slider.frame = contentView.bounds
        slider.minimumValue = 0
        slider.maximumValue = 10
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
