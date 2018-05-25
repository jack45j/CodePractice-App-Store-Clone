//
//  WorldPremiereCell.swift
//  AppStore Clone
//
//  Created by instance on 2018/5/25.
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit

class WorldPremiereCell: UICollectionViewCell {
    
    /// Image View
    @IBOutlet private weak var uiImgViewWorldPremiere: UIImageView!

    internal static func dequeue(fromCollectionView collectionView:UICollectionView, atIndexPath indexPath: IndexPath) -> WorldPremiereCell {
        guard let cell: WorldPremiereCell = collectionView.dequeueReusableCell(indexPath: indexPath) else {
            fatalError("Failed to dequeue AppOfTheDayCell")
        }
        return cell
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        uiImgViewWorldPremiere.layer.cornerRadius = 14.0
    }
}
