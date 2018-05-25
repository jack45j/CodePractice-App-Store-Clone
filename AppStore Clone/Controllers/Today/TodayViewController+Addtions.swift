//
//  TodayViewController+CollectionView.swift
//  AppStore Clone
//
//  Created by Yi-Cheng,Lin on 5/24/18
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
        collectionView.registerReusableCell(AppOfTheDayCell.self)
        collectionView.registerReusableCell(FromTheEditorsCell.self)
        collectionView.registerReusableCell(WorldPremiereCell.self)
        collectionView.registerSupplementaryView(TodaySectionHeaderCell.self, kind: UICollectionElementKindSectionHeader)
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    
    /// MARK: UICollectionViewDataSource
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.row {
        case 0:
            /// return any cell you want
            /// ex:
            /// return WorldPremiereCell.dequeque(fromCollectionView: collectionView, atIndexPath: indexPath)
            return FromTheEditorsCell.dequeue(fromCollectionView: collectionView, atIndexPath: indexPath)
        case 1:
            return WorldPremiereCell.dequeue(fromCollectionView: collectionView, atIndexPath: indexPath)
        case 2...4:
            return AppOfTheDayCell.dequeue(fromCollectionView: collectionView, atIndexPath: indexPath)
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
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: TodaySectionHeaderCell.ViewHeight)
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        return TodaySectionHeaderCell.dequeue(fromCollectionView: collectionView, ofKind: kind, atIndexPath: indexPath)
    }
}
