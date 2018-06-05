//
//  TitleAndSliderCollectionViewCell.swift
//  AppStore Clone
//
//  Created by instance on 2018/6/5.
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit

class TitleAndSliderCollectionViewCell: UICollectionViewCell, NibReusable {
    
    @IBOutlet private weak var uiCollectionViewList: UICollectionView!
    
    /// Section inset of uiCollectionViewSlider
    private let SectionInset: CGFloat = 32.0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        uiCollectionViewList.register(cellType: GamesListCollectionViewCell.self)
        uiCollectionViewList.delegate = self
        uiCollectionViewList.dataSource = self
    }
}


extension TitleAndSliderCollectionViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return uiCollectionViewList.dequeueReusableCell(for: indexPath) as GamesListCollectionViewCell
    }
}


extension TitleAndSliderCollectionViewCell: UICollectionViewDelegateFlowLayout {
    
    /// MARK: - UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width - SectionInset , height: collectionView.bounds.height/3)
    }
}
