//
//  RoundedBorderButton.swift
//  Clima
//
//  Created by Hammoud Hammoud on 11/16/17.
//  Copyright © 2017 London App Brewery. All rights reserved.
//

import UIKit

class RoundedBorderButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 1/UIScreen.main.nativeScale
        titleLabel?.adjustsFontForContentSizeCategory = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = self.frame.height/2
        layer.borderColor = isEnabled ? backgroundColor?.cgColor : UIColor.lightGray.cgColor
        contentEdgeInsets = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
        
    }
}
