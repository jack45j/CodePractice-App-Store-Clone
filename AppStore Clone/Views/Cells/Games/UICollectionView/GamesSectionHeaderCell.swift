//
//  GamesSectionHeaderCell.swift
//  AppStore Clone
//
//  Created by Yi-Cheng,Lin on 06/04/18
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit

class GamesSectionHeaderCell: UICollectionViewCell, NibReusable {
    
    @IBOutlet private weak var uiImgViewProfile: UIImageView!
    
    /// TodaySectionHeaderCell's height
    internal static var ViewHeight:CGFloat = 80.0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        uiImgViewProfile.layer.cornerRadius = uiImgViewProfile.frame.height/2
    }
}
