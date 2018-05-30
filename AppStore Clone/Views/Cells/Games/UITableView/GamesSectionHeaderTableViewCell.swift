//
//  GamesSectionHeaderTableViewCell.swift
//  AppStore Clone
//
//  Created by instance on 2018/5/30.
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit

class GamesSectionHeaderTableViewCell: UITableViewCell, NibReusable {
    
    /// TodaySectionHeaderCell's height
    internal static var ViewHeight:CGFloat = 80.0
    
    /// Profile Image View
    @IBOutlet private weak var uiImgViewProfile: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        uiImgViewProfile.layer.cornerRadius = uiImgViewProfile.frame.height / 2
    }
}
