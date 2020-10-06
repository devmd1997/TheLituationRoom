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
    
    
    var collectionView: UICollectionView?
    let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "litYellow")
        setupCollectionView()
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
    
    lazy var menuBar: MenuBar = {
        let mb = MenuBar()
        mb.homeVC = self
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
        view.addSubview(collectionView!)
        view.addConstraintsWithFormat(format: "H:|[v0]|", views: menuBar)
        view.addConstraintsWithFormat(format: "H:|[v0]|", views: headerImage)
        view.addConstraintsWithFormat(format: "H:|[v0]|", views: collectionView!)
        view.addConstraintsWithFormat(format: "V:|-35-[v0(64)]-0-[v1(267)]-0-[v2]|", views: menuBar,headerImage,collectionView!)
    }
    
    func scrollToMenuIndex(menuIndex: Int){
        let indexPath = IndexPath(item: menuIndex, section: 0)
        collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        return cell
    }
    
    func setupCollectionView() {
        
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collectionView?.backgroundColor = UIColor(named: "litYellow")
        collectionView?.setCollectionViewLayout(layout, animated: true)
        collectionView?.register(FeedCell.self, forCellWithReuseIdentifier:  cellId)
        collectionView?.contentInset = UIEdgeInsets(top: 50, left: 0, bottom: 0, right: 0)
        collectionView?.scrollIndicatorInsets = UIEdgeInsets(top: 50, left: 0, bottom: 0, right: 0)
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.translatesAutoresizingMaskIntoConstraints = false
        collectionView?.isPagingEnabled = true
        
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        menuBar.horizontalBarLeftAnchorConstraint?.constant = (scrollView.contentOffset.x / 2)
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let index = targetContentOffset.pointee.x / view.frame.width
        let indexPath = IndexPath(item: Int(index), section: 0)
        menuBar.collectionView.selectItem(at: indexPath, animated: true, scrollPosition: .centeredHorizontally)
    }
}
