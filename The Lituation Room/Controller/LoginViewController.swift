//
//  LoginViewController.swift
//  The Lituation Room
//
//  Created by Devon Adams on 9/3/20.
//  Copyright © 2020 Devon Adams. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class LoginViewController: UIViewController,  IndicatorInfoProvider{
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Login")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
