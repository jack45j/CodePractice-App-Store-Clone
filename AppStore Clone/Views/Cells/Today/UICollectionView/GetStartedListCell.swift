//
//  GetStartedListCellCollectionViewCell.swift
//  AppStore Clone
//
//  Created by Yi-Cheng,Lin on 5/24/18
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit
import CoreMotion

class GetStartedListCell: BaseRoundedCardCell, NibReusable {
    
    /// BackGround View
    @IBOutlet private weak var uiViewBackGround: UIView!
    
    /// ImageView
    @IBOutlet private weak var uiImgViewGetStartedList: UIImageView!
    
    /// Overlay View
    @IBOutlet private weak var uiViewOverLay: UIView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        uiViewBackGround.layer.cornerRadius = 14.0
    }
}
