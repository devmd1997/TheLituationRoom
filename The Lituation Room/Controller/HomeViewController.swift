//
//  HomeViewController.swift
//  The Lituation Room
//
//  Created by Devon Adams on 9/15/20.
//  Copyright © 2020 Devon Adams. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "litYellow")
        setupMenuBar()
//        buttonBarView.delegate = self
//        loadBarItems()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let tableView1 = UITableView()
        tableView1.backgroundColor = UIColor.blue
        self.tableView = tableView1
        self.navigationController?.navigationBar.isHidden = true;
    }
    
    let menuBar: MenuBar = {
        let mb = MenuBar()
        
        mb.translatesAutoresizingMaskIntoConstraints = false
        return mb
    }()
    
    let headerImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "lishablive")
        image.contentMode = .scaleAspectFill
//        image.backgroundColor = UIColor.red
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var tableView: UITableView = {
        let table = UITableView()
        table.backgroundColor = UIColor.purple
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    private func setupMenuBar() {
        
        view.addSubview(headerImage)
        view.addSubview(menuBar)
        view.addSubview(tableView)
        view.addConstraintsWithFormat(format: "H:|[v0]|", views: menuBar)
        view.addConstraintsWithFormat(format: "H:|[v0]|", views: headerImage)
        view.addConstraintsWithFormat(format: "H:|[v0]|", views: tableView)
        view.addConstraintsWithFormat(format: "V:|-35-[v0(64)]-0-[v1(267)]-0-[v2]|", views: menuBar,headerImage,tableView)
    }
    
    
//    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
//         let child1 = UIStoryboard.init(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "FeaturedVideos") as! FeaturedVideosViewController
//
//         let child2 = UIStoryboard.init(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "FeaturedPodcasts") as! FeaturedPodcastsViewController
//
//         return [child1, child2]
//    }
    
//    func loadBarItems(){
//        settings.style.buttonBarBackgroundColor = UIColor(named: "litYellow")!
//        settings.style.buttonBarItemBackgroundColor = UIColor(named: "litYellow")!
//        settings.style.selectedBarBackgroundColor = UIColor(named: "litYellow")!
//        settings.style.buttonBarItemFont = UIFont(name: "Futura", size: 14)!
//        settings.style.selectedBarHeight = 2.0
//        settings.style.buttonBarMinimumLineSpacing = 0
//        settings.style.buttonBarItemTitleColor = .black
//        settings.style.buttonBarItemsShouldFillAvailableWidth = true
//        settings.style.buttonBarLeftContentInset = 0
//        settings.style.buttonBarRightContentInset = 0
//
//        changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
//        guard changeCurrentIndex == true else { return }
//        oldCell?.label.textColor = .darkGray
//            oldCell?.label.font = UIFont(name: "Futura", size: 14)
//            newCell?.label.textColor = UIColor(named: "litBlack")!
//            newCell?.label.font = UIFont(name: "Futura-Bold", size: 14)!
//        }
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 120, height: 40)
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
