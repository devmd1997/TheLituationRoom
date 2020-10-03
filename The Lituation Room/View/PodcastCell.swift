//
//  PodcastCell.swift
//  The Lituation Room
//
//  Created by Devon Adams on 9/16/20.
//  Copyright © 2020 Devon Adams. All rights reserved.
//

import UIKit

class PodcastCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var thumbnailImage: UIImageView!
    @IBOutlet weak var descriptionlabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
