//
//  GamesViewController+Additions.swift
//  AppStore Clone
//
//  Created by instance on 2018/5/30.
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit

extension GamesViewController {
    /// MARK - Configuration
    
    internal func configure(collectionView: UICollectionView) {
        collectionView.register(cellType: GamesSectionHeaderCell.self)
        collectionView.register(cellType: SliderCollectionViewCell.self)
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}


extension GamesViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 2
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.row {
        case 0:
            return collectionView.dequeueReusableCell(for: indexPath) as GamesSectionHeaderCell
        case 1:
            return collectionView.dequeueReusableCell(for: indexPath) as SliderCollectionViewCell
        default:
            return collectionView.dequeueReusableCell(for: indexPath) as SliderCollectionViewCell
        }
    }
}


extension GamesViewController: UICollectionViewDelegateFlowLayout {
    /// MARK: - UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch indexPath.row {
        case 0:
            return CGSize(width: collectionView.bounds.width, height: GamesSectionHeaderCell.ViewHeight)
        case 1:
            return CGSize(width: collectionView.bounds.width, height: 288)
        default:
            return CGSize(width: collectionView.bounds.width, height: 288)
        }
    }
}
