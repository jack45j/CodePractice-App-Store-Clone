//
//  FromTheEditorsCell.swift
//  AppStore Clone
//
//  Created by Yi-Cheng,Lin on 5/25/18
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit

class FromTheEditorsCell: BaseRoundedCardCell {
    
    /// Image View
    @IBOutlet private weak var uiImgViewFromTheEditors: UIImageView!
    
    
    internal static func dequeue(fromCollectionView collectionView:UICollectionView, atIndexPath indexPath: IndexPath) -> FromTheEditorsCell {
        guard let cell: FromTheEditorsCell = collectionView.dequeueReusableCell(indexPath: indexPath) else {
            fatalError("Failed to dequeue AppOfTheDayCell")
        }
        return cell
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
        uiImgViewFromTheEditors.layer.cornerRadius = 14.0
    }
}
