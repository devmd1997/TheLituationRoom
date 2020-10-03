//
//  VideoCell.swift
//  The Lituation Room
//
//  Created by Devon Adams on 9/15/20.
//  Copyright © 2020 Devon Adams. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
