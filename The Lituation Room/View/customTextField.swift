//
//  customTextField.swift
//  The Lituation Room
//
//  Created by Devon Adams on 9/15/20.
//  Copyright © 2020 Devon Adams. All rights reserved.
//

import UIKit

class customTextField: UITextField {

    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 2.0
        self.layer.borderColor = UIColor(named: "litBlack")!.cgColor
        self.layer.masksToBounds = true
    }

}
