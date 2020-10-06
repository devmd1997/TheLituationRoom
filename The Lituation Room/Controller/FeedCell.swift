//
//  FeedCell.swift
//  The Lituation Room
//
//  Created by Devon Adams on 10/5/20.
//  Copyright © 2020 Devon Adams. All rights reserved.
//

import UIKit

class FeedCell: BaseCell, UITableViewDelegate, UITableViewDataSource{
    
    var videos: [Video] = [Video(thumbnailImage: UIImage(named: "lishablive")!, title: "Season 1 Episode 1", description: "This is the season 1 episode. Featuring a guest!"), Video(thumbnailImage: UIImage(named: "lishablive")!, title: "Season 1 Episode 2", description: "This is the season 1 episode. Featuring a guest!"), Video(thumbnailImage: UIImage(named: "lishablive")!, title: "Season 1 Episode 3", description: "This is the season 1 episode. Featuring a guest!")]
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        table.backgroundColor = UIColor(named: "litYellow")
        table.dataSource = self
        table.delegate = self
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    let cellId = "feedId"
    
    override func setupViews() {
        super.setupViews()
        
        backgroundColor = UIColor(named: "litYellow")
        tableView.register(UINib(nibName: K.videoNibName, bundle: nil), forCellReuseIdentifier: K.videoCellIdentifier)
        addSubview(tableView)
        addConstraintsWithFormat(format: "H:|[v0]|", views: tableView)
        addConstraintsWithFormat(format: "V:|[v0]|", views: tableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.videoCellIdentifier, for: indexPath) as! VideoCell
        let video = videos[indexPath.row]
        cell.thumbnail.image = video.thumbnailImage
        cell.titleLabel.text = video.title
        cell.descriptionLabel.text = video.description
        return cell
    }
    
    
}
