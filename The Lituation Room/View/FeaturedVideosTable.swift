//
//  FeaturedVideosTable.swift
//  The Lituation Room
//
//  Created by Devon Adams on 10/5/20.
//  Copyright © 2020 Devon Adams. All rights reserved.
//

import UIKit

class FeaturedVideosTable: UITableView, UITableViewDelegate, UITableViewDataSource {
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
