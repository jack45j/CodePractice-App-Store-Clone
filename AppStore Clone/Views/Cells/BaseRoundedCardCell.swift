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
        configureGestureRecognizer()
    }
    
    
    /// MARK: - Gesture Recognizer
    
    private func configureGestureRecognizer() {
        /// Long Press Gesture Recognizer
        LongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(LongPressGestureHandler(GestureRecognizer:)))
        LongPressGestureRecognizer?.minimumPressDuration = 0.08
        addGestureRecognizer(LongPressGestureRecognizer!)
    }
    
    @objc internal func LongPressGestureHandler(GestureRecognizer: UILongPressGestureRecognizer) {
        if GestureRecognizer.state == .began {
            /// animation of gesture started
            LongPressBeganHandler()
        } else if GestureRecognizer.state == .ended || GestureRecognizer.state == .cancelled {
            /// animation of gesture eneded
            LongPressEndedHandler()
        }
    }
    
    
    /// MARK: - LongPressGesture Animation
    
    private func LongPressBeganHandler() {
        guard !isPressed else {
            return
        }
        
        isPressed = true
        UIView.animate(withDuration: 0.5,
                       delay: 0.0,
                       usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 0.2,
                       options: .beginFromCurrentState,
                       animations: {
                        self.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        }, completion: nil)
    }
    
    private func LongPressEndedHandler() {
        guard isPressed else {
            return
        }
        
        UIView.animate(withDuration: 0.5,
                       delay: 0.0,
                       usingSpringWithDamping: 0.4,
                       initialSpringVelocity: 0.2,
                       options: .beginFromCurrentState,
                       animations: {
                        self.transform = CGAffineTransform.identity
        }) { (finished) in
            self.isPressed = false
        }
    }
}
