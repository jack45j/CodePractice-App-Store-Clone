//
//  AppOfTheDayCell.swift
//  AppStore Clone
//
//  Created by Yi-Cheng,Lin on 5/25/18
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit

class AppOfTheDayCell: BaseRoundedCardCell {
    
    /// BcakGround View
    @IBOutlet private weak var uiViewBackGround: UIView!
    
    /// ImageView
    @IBOutlet private weak var uiImgViewAppOfTheDay: UIImageView!
    
    /// icon ImageView
    @IBOutlet private weak var uiImgViewAppIcon: UIImageView!
    
    /// GET Button
    @IBOutlet private weak var uiBtnGetButton: UIButton!
    
    /// App Title
    @IBOutlet private weak var uiLblAppTitle: UILabel!
    
    /// App subtitle
    @IBOutlet private weak var uiLblAppSubtitle: UILabel!
    
    /// Visual effect blur vieew
    @IBOutlet private weak var uiViewBlurEffect: UIView!
    
    
    /// MARK - Factory Method
    internal static func dequeue(fromCollectionView collectionView:UICollectionView, atIndexPath indexPath: IndexPath) -> AppOfTheDayCell {
        guard let cell: AppOfTheDayCell = collectionView.dequeueReusableCell(indexPath: indexPath) else {
            fatalError("Failed to dequeue AppOfTheDayCell")
        }
        return cell
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        /// Add blur effect to the bottom of AppOfTheDay View
        /// There is a weird extra space on the right side of the view
        /// Don't know wtf just happened.
        let BlurEffect = UIBlurEffect(style: .light)
        let BlurEffectView = UIVisualEffectView(effect: BlurEffect)
        /// maybe the bug occured by this.
        BlurEffectView.frame = uiViewBlurEffect.bounds
        uiViewBlurEffect.addSubview(BlurEffectView)
        uiImgViewAppOfTheDay.addSubview(uiViewBlurEffect)
       
        
        uiViewBackGround.layer.cornerRadius = 14.0
        uiBtnGetButton.layer.cornerRadius = uiBtnGetButton.bounds.height/2
    }
}
