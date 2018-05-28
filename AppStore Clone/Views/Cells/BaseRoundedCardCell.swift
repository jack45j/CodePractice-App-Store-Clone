//
//  BaseRoundedCardCell.swift
//  AppStore Clone
//
//  Created by Yi-Cheng,Lin on 5/25/18
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit

class BaseRoundedCardCell: UICollectionViewCell {
    
    /// Long Press Gesture Recognizer
    private var LongPressGestureRecognizer: UILongPressGestureRecognizer? = nil
    
    /// is Pressed State
    private var isPressed: Bool = false
    
    override func awakeFromNib() {
        
    }
    
    
    /// CollectionView Cell highlight animation.
    
    func animate(isHighlighted: Bool, completion: ((Bool) -> Void)?=nil) {
        if isHighlighted {
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0, options: [UIViewAnimationOptions.beginFromCurrentState], animations: {
                self.transform = CGAffineTransform.identity.scaledBy(x: 0.96, y: 0.96)
            }, completion: completion)
        } else {
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0, options: [UIViewAnimationOptions.beginFromCurrentState], animations: {
                self.transform = .identity
            }, completion: completion)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.animate(isHighlighted: true)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        self.animate(isHighlighted: false)
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
        self.animate(isHighlighted: false)
    }
}
