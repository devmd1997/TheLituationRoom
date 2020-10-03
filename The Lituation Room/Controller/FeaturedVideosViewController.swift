//
//  FeaturedVideosViewController.swift
//  The Lituation Room
//
//  Created by Devon Adams on 9/15/20.
//  Copyright © 2020 Devon Adams. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class FeaturedVideosViewController: UIViewController, IndicatorInfoProvider, UITableViewDelegate, UITableViewDataSource{
    
    var videos: [Video] = [Video(thumbnailImage: UIImage(named: "lishablive")!, title: "Season 1 Episode 1", description: "This is the season 1 episode. Featuring a guest!"), Video(thumbnailImage: UIImage(named: "lishablive")!, title: "Season 1 Episode 2", description: "This is the season 1 episode. Featuring a guest!"), Video(thumbnailImage: UIImage(named: "lishablive")!, title: "Season 1 Episode 3", description: "This is the season 1 episode. Featuring a guest!")]
    @IBOutlet weak var videoTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videoTable.delegate = self
        videoTable.dataSource = self
        videoTable.register(UINib(nibName: K.videoNibName, bundle: nil), forCellReuseIdentifier: K.videoCellIdentifier)
        // Do any additional setup after loading the view.
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Featured Videos")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = videoTable.dequeueReusableCell(withIdentifier: K.videoCellIdentifier, for: indexPath) as! VideoCell
        let video = videos[indexPath.row]
        cell.thumbnail.image = video.thumbnailImage
        cell.titleLabel.text = video.title
        cell.descriptionLabel.text = video.description
        return cell
    }
    

}
