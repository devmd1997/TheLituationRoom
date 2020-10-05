//
//  Extensions.swift
//  The Lituation Room
//
//  Created by Devon Adams on 10/4/20.
//  Copyright © 2020 Devon Adams. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func addConstraintsWithFormat(format: String, views: UIView...){
        
        var viewsDictionary = [String: UIView]()
        for(index,view) in views.enumerated(){
            let key = "v\(index)"
            viewsDictionary[key] = view
        }
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: viewsDictionary))
    }
}

class BaseCell: UICollectionViewCell{
    override init(frame: CGRect) {
           super.init(frame: frame)
           setupViews()
       }
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
    
    func setupViews() {
        
    }
}
