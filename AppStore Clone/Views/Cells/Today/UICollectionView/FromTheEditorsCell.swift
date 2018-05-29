//
//  FromTheEditorsCell.swift
//  AppStore Clone
//
//  Created by Yi-Cheng,Lin on 5/25/18
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit

class FromTheEditorsCell: BaseRoundedCardCell, NibReusable {
    
    /// BackGround View
    @IBOutlet private weak var uiViewBackGround: UIView!
    
    /// Image View
    @IBOutlet private weak var uiImgViewFromTheEditors: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        uiViewBackGround.layer.cornerRadius = 14.0
    }
}
