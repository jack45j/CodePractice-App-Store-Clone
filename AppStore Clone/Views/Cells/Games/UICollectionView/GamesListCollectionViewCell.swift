//
//  GamesListCollectionViewCell.swift
//  AppStore Clone
//
//  Created by Yi-Cheng,Lin on 06/05/18
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit

class GamesListCollectionViewCell: UICollectionViewCell, NibReusable {
    
    @IBOutlet private weak var uiImgAppIcon: UIImageView!
    
    @IBOutlet private weak var uiBtnGet: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        uiImgAppIcon.layer.cornerRadius = 14.0
        uiBtnGet.layer.cornerRadius = 14.0
    }
}
