//
//  SomeThingNewTVCell.swift
//  AppStore Clone
//
//  Created by Yi-Cheng,Lin on 2018/5/29.
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit

class SomeThingNewTableCell: UITableViewCell, NibReusable {
    internal let RowHeight: CGFloat = 60.0
    
    @IBOutlet private weak var uiImgViewAppIcon: UIImageView!
    
    @IBOutlet private weak var uiLblAppName: UILabel!
    
    @IBOutlet private weak var uiLblAppDescription: UILabel!
    
    @IBOutlet private weak var uiBtnGetApp: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        uiImgViewAppIcon.layer.cornerRadius = 14.0
        uiBtnGetApp.layer.cornerRadius = uiBtnGetApp.frame.height / 2
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        /// Some Gesture conflict issues.
        /// animation for collectionView cell will not display when user long press this tableView cell.
    }
}
