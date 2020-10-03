//
//  FeaturedPodcastsViewController.swift
//  The Lituation Room
//
//  Created by Devon Adams on 9/15/20.
//  Copyright © 2020 Devon Adams. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class FeaturedPodcastsViewController: UIViewController, IndicatorInfoProvider, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    let podcasts: [Podcast] = [Podcast(title: "Season 1 Epidosde 1", thumbnail: UIImage(named: "lishablive")!, description: "Season 1 brings in heat featuring xyz ...."), Podcast(title: "Season 1 Epidosde 2", thumbnail: UIImage(named: "lishablive")!, description: "Season 1 brings in heat featuring xyz ...."),
                               Podcast(title: "Season 1 Epidosde 2", thumbnail: UIImage(named: "lishablive")!, description: "Season 1 brings in heat featuring xyz ....")]
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Featured Podcasts")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: K.podcastNibName, bundle: nil), forCellReuseIdentifier: K.podcastCellIdentifier)
    }
    
    //MARK: - TableViewDelegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return podcasts.count
    }
    
    //MARK: - TableViewDatasource
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.podcastCellIdentifier, for: indexPath) as! PodcastCell
        let podcast = podcasts[indexPath.row]
        cell.thumbnailImage.image = podcast.thumbnail
        cell.titleLabel.text = podcast.title
        cell.descriptionlabel.text = podcast.description
        return cell
    }
    
    
}
