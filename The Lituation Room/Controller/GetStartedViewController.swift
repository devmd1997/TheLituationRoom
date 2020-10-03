//
//  ViewController.swift
//  The Lituation Room
//
//  Created by Devon Adams on 9/2/20.
//  Copyright © 2020 Devon Adams. All rights reserved.
//

import UIKit

class GetStartedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }


}

