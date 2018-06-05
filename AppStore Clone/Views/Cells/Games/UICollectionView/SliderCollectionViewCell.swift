//
//  SliderCollectionViewCell.swift
//  AppStore Clone
//
//  Created by instance on 2018/6/4.
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit

class SliderCollectionViewCell: UICollectionViewCell, NibReusable {
    
    @IBOutlet private weak var uiCollectionViewSlider: UICollectionView!
    
    /// Section inset of uiCollectionViewSlider
    private let SectionInset: CGFloat = 32.0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        uiCollectionViewSlider.register(cellType: GamesSliderCollectionViewCell.self)
        uiCollectionViewSlider.delegate = self
        uiCollectionViewSlider.dataSource = self
    }
}


extension SliderCollectionViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return uiCollectionViewSlider.dequeueReusableCell(for: indexPath) as GamesSliderCollectionViewCell
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        // Stop scrollView sliding:
        targetContentOffset.pointee = scrollView.contentOffset
    }
}


extension SliderCollectionViewCell: UICollectionViewDelegateFlowLayout {
    
    /// MARK: - UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width - SectionInset , height: 288)
    }
}
