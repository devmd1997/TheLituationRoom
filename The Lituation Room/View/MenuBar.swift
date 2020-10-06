//
//  MenuBar.swift
//  The Lituation Room
//
//  Created by Devon Adams on 10/4/20.
//  Copyright © 2020 Devon Adams. All rights reserved.
//

import Foundation
import UIKit

class MenuBar: UIView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
   
    
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = UIColor.blue
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.isScrollEnabled = false
        cv.dataSource = self
        cv.delegate = self
        return cv
    }()
    let cellId = "cellId"
    var homeVC: HomeViewController?
    
    let titleNames = ["Featured Videos", "Featured Podcasts"]
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(collectionView)
        collectionView.register(MenuCell.self, forCellWithReuseIdentifier: cellId)
        addConstraintsWithFormat(format: "H:|[v0]|", views: collectionView)
        addConstraintsWithFormat(format: "V:|[v0]|", views: collectionView)
        
        let selectedIndexPath = IndexPath(item: 0, section: 0)
        collectionView.selectItem(at: selectedIndexPath, animated: false, scrollPosition: .top)
        setupHorizontalBar()
    }
    
    var horizontalBarLeftAnchorConstraint: NSLayoutConstraint?
    
    private func setupHorizontalBar(){
        let horizontalBarView = UIView()
        horizontalBarView.backgroundColor = UIColor(named: "litBlack")
        horizontalBarView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(horizontalBarView)
        
        horizontalBarLeftAnchorConstraint = horizontalBarView.leftAnchor.constraint(equalTo: self.leftAnchor)
        horizontalBarLeftAnchorConstraint?.isActive = true
        horizontalBarView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        horizontalBarView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/2).isActive = true
        horizontalBarView.heightAnchor.constraint(equalToConstant: 4).isActive = true
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return 2
       }
       
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width / 2, height: frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! MenuCell
        cell.title.text = titleNames[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        homeVC?.scrollToMenuIndex(menuIndex: indexPath.row)
    }
}


class MenuCell: BaseCell {
    let title: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont(name: "Futura", size: 14)
        label.textColor = UIColor.darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override func setupViews() {
        super.setupViews()
        backgroundColor = UIColor(named: "litYellow")
        addSubview(title)
        addConstraintsWithFormat(format: "H:|-20-[v0]-20-|", views: title)
        addConstraintsWithFormat(format: "V:|-20-[v0]-20-|", views: title)
    }
    
    override var isHighlighted: Bool{
        didSet{
            title.textColor = isHighlighted ? UIColor.init(named: "litBlack") : UIColor.darkGray
        }
    }
    
    override var isSelected: Bool{
        didSet{
            title.textColor = isSelected ? UIColor.init(named: "litBlack") : UIColor.darkGray
        }
    }
}
