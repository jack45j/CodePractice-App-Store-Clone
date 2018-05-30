//
//  GamesSliderCollectionViewCell.swift
//  AppStore Clone
//
//  Created by instance on 2018/5/30.
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit

class GamesSliderCollectionViewCell: UICollectionViewCell, NibReusable {
    internal static let RowHeight: CGFloat = 300.0
    
    @IBOutlet private weak var uiViewBackGround: UIView!
    
    @IBOutlet private weak var uiImgAppImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        uiImgAppImage.layer.cornerRadius = 14.0
    }
}
