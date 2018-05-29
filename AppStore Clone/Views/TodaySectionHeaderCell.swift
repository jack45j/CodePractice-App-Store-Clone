//
//  TodaySectionHeaderCell.swift
//  AppStore Clone
//
//  Created by Yi-Cheng,Lin on 5/25/18
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit

class TodaySectionHeaderCell: UICollectionViewCell, NibReusable {
    
    @IBOutlet private weak var uiLblDate: UILabel!
    
    @IBOutlet private weak var uiLblWeekDay: UILabel!
    
    /// TodaySectionHeaderCell's height
    internal static var ViewHeight:CGFloat = 80.0
    
    /// Profile Image View
    @IBOutlet private weak var uiImgViewProfile: UIImageView!
    
    /// Hide Profile Image if the condition doesn't confirm
    internal var shouldShowProfileImage: Bool = true {
        didSet {
            uiImgViewProfile.isHidden = !shouldShowProfileImage
        }
    }
    
    /// update section header date text
    internal func updateDateLabel(index:Int) -> Void {
        let TodayDate = Date()
        let SectionDate = Calendar.current.date(byAdding: .day, value: index * -1, to: TodayDate)
        let components = Calendar.current.dateComponents([.day], from: SectionDate!)
        
        uiLblDate.text = "\(components.day!) \(SectionDate?.MonthAsString() ?? "")"
        if index != 0 {
            uiLblWeekDay.text = "\(SectionDate?.WeekDay() ?? "")"
        } else {
            uiLblWeekDay.text = "Today"
        }
    }
    
    
//    // MARK: - Factory Method
//    
//    internal static func dequeue(fromCollectionView collectionView: UICollectionView, ofKind kind: String, atIndexPath indexPath: IndexPath) -> TodaySectionHeaderCell {
//        guard let view: TodaySectionHeaderCell = collectionView.dequeueSupplementaryView(kind: kind, indexPath: indexPath) else {
//            fatalError("Failed to dequeue TodaySectionHeaderCell")
//        }
//        return view
//    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        TodaySectionHeaderCell.ViewHeight = self.frame.size.height
        uiImgViewProfile.layer.cornerRadius = uiImgViewProfile.bounds.height/2
    }
}
