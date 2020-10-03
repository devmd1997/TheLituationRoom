//
//  RoundButton.swift
//  The Lituation Room
//
//  Created by Devon Adams on 9/2/20.
//  Copyright © 2020 Devon Adams. All rights reserved.
//

import UIKit

class RoundButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpButton()
    }
    
    func setUpButton() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 6.0)
        layer.shadowRadius = 8
        layer.shadowOpacity = 0.5
        layer.cornerRadius = 25
        layer.borderWidth = 3.0
        layer.borderColor = UIColor(named: "litBlack")!.cgColor
        layer.masksToBounds = false
        clipsToBounds = true
    }
}
