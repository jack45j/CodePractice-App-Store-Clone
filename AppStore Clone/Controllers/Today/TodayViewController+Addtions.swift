//
//  TodayViewController+CollectionView.swift
//  AppStore Clone
//
//  Created by instance on 2018/5/24.
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit

extension TodayViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    /// MARK - Configuration
    
    internal func configure(collectionView: UICollectionView) {
        /// register some reusable cell here
        /// ex:
        /// collectionView.registerReusableCell(WorldPremiereCell.self)
        collectionView.registerReusableCell(GetStartedListCell.self)
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    
    /// MARK: UICollectionViewDataSource
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.row {
        case 0:
            /// return any cell you want
            /// ex:
            /// return WorldPremiereCell.dequeque(fromCollectionView: collectionView, atIndexPath: indexPath)
            return GetStartedListCell.dequeue(fromCollectionView: collectionView, atIndexPath: indexPath)
        default:
            /// return default cell
            /// ex:
            return GetStartedListCell.dequeue(fromCollectionView: collectionView, atIndexPath: indexPath)
        }
    }
    
    
    /// MARK: - UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 470)
    }
}
