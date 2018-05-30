//
//  LimitedTimeTableCell.swift
//  AppStore Clone
//
//  Created by instance on 2018/5/30.
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit

class LimitedTimeTableCell: UITableViewCell, NibReusable {
    @IBOutlet private weak var uiCollectionViewLimitedTime: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        uiCollectionViewLimitedTime.register(cellType: GamesSliderCollectionViewCell.self)
        uiCollectionViewLimitedTime.dataSource = self
        uiCollectionViewLimitedTime.delegate = self
    }
}


extension LimitedTimeTableCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(for: indexPath) as GamesSliderCollectionViewCell
    }
}
