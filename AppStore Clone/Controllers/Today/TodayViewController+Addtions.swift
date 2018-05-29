//
//  TodayViewController+CollectionView.swift
//  AppStore Clone
//
//  Created by Yi-Cheng,Lin on 5/24/18
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit

extension TodayViewController {
    
    /// MARK - Configuration
    
    internal func configure(collectionView: UICollectionView) {
        collectionView.register(cellType: GetStartedListCell.self)
        collectionView.register(cellType: AppOfTheDayCell.self)
        collectionView.register(cellType: FromTheEditorsCell.self)
        collectionView.register(cellType: WorldPremiereCell.self)
        collectionView.register(cellType: SomeThingNewCell.self)
        collectionView.register(supplementaryViewType: TodaySectionHeaderCell.self, ofKind: UICollectionElementKindSectionHeader)
//        collectionView.register(supplementaryViewType: TodaySectionHeaderCell.self, ofKind: UICollectionElementKindSectionHeader)
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}



extension TodayViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    /// MARK: UICollectionViewDelegate
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        /// present to detail viewcontroller
        /// do something here
    }
    
    
    /// MARK: UICollectionViewDataSource
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.row {
        case 0:
            return collectionView.dequeueReusableCell(for: indexPath) as WorldPremiereCell
        case 1:
            return collectionView.dequeueReusableCell(for: indexPath) as GetStartedListCell
        case 2:
            return collectionView.dequeueReusableCell(for: indexPath) as AppOfTheDayCell
        case 3:
            return collectionView.dequeueReusableCell(for: indexPath) as FromTheEditorsCell
        case 4:
            return collectionView.dequeueReusableCell(for: indexPath) as SomeThingNewCell
        default:
            return collectionView.dequeueReusableCell(for: indexPath) as GetStartedListCell
        }
    }
}


extension TodayViewController: UICollectionViewDelegateFlowLayout {
    
    /// MARK: - UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 470)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: TodaySectionHeaderCell.ViewHeight)
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let sectionHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, for: indexPath) as TodaySectionHeaderCell
        sectionHeader.shouldShowProfileImage = (indexPath.section == 0)
        sectionHeader.updateDateLabel(index: indexPath.section)
        
        
        return sectionHeader
    }
}


