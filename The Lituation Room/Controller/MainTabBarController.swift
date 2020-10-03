//
//  MainTabBarController.swift
//  The Lituation Room
//
//  Created by Devon Adams on 9/24/20.
//  Copyright © 2020 Devon Adams. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let homeVC = HomeViewController()
        let searchVC = SearchViewController()
        homeVC.title = "Home"
        searchVC.title = "Search"
        viewControllers = [homeVC, searchVC].map({ UINavigationController(rootViewController: $0)})
        guard let items = tabBar.items else {
                return
            }
        let images = ["house", "magnifyingglass"]
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
