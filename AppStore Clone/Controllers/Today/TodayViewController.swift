//
//  TodayViewController.swift
//  AppStore Clone
//
//  Created by Yi-Cheng,Lin on 5/24/18
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit

class TodayViewController: UIViewController {
    
    @IBOutlet weak var uiCollectionViewTodayList: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        /// configure(Initialize) collectionView 
        configure(collectionView: uiCollectionViewTodayList)
    }
}
