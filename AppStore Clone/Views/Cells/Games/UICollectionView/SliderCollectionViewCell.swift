//
//  SliderCollectionViewCell.swift
//  AppStore Clone
//
//  Created by Yi-Cheng,Lin on 06/04/18
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
        
        /// have some offset problem.
        /// maybe will using flow layout delegate to custom paging feature.
        uiCollectionViewSlider.isPagingEnabled = true
        
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
}


extension SliderCollectionViewCell: UICollectionViewDelegateFlowLayout {
    
    /// MARK: - UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width - SectionInset , height: 288)
    }
}
