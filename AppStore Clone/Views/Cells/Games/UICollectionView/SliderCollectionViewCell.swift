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
}


extension SliderCollectionViewCell: UICollectionViewDelegateFlowLayout {
    
    /// MARK: - UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        print(collectionViewLayout.collectionView?.contentInset.left)
        return CGSize(width: collectionView.bounds.width - 32 , height: 288)
    }
}
