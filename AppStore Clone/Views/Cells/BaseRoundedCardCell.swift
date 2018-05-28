//
//  BaseRoundedCardCell.swift
//  AppStore Clone
//
//  Created by Yi-Cheng,Lin on 5/25/18
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit
import CoreMotion

class BaseRoundedCardCell: UICollectionViewCell {
    
    /// Long Press Gesture Recognizer
    private var LongPressGestureRecognizer: UILongPressGestureRecognizer? = nil
    
    /// is Pressed State
    private var isPressed: Bool = false
    
    /// Shadow View
    private weak var ShadowView: UIView?
    
    /// Core Motion Manager
    private let motionManager = CMMotionManager()
    
    enum Constants {
        static let InnerMargin: CGFloat = 20.0
    }
    
    
    /// CollectionView Cell highlight animation
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


/// MARK: - shadow

extension BaseRoundedCardCell {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        configureShadowView()
    }
    
    private func configureShadowView() {
        self.ShadowView?.removeFromSuperview()
        let shadowView = UIView(frame: CGRect(x: Constants.InnerMargin,
                                              y: Constants.InnerMargin,
                                              width: bounds.width - (2 * Constants.InnerMargin),
                                              height: bounds.height - (2 * Constants.InnerMargin)))
        insertSubview(shadowView, at: 0)
        self.ShadowView = shadowView
        
        // Roll/Pitch Dynamic Shadow
        if motionManager.isDeviceMotionAvailable {
            motionManager.deviceMotionUpdateInterval = 0.02
            motionManager.startDeviceMotionUpdates(to: .main, withHandler: { (motion, error) in
                if let motion = motion {
                    let pitch = motion.attitude.pitch * 5 // x-axis
                    let roll = motion.attitude.roll * 5 // y-axis
                    self.applyShadow(width: CGFloat(roll), height: CGFloat(pitch))
                }
            })
        }
    }
    
    private func applyShadow(width: CGFloat, height: CGFloat) {
        if let shadowView = ShadowView {
            let shadowPath = UIBezierPath(roundedRect: shadowView.bounds, cornerRadius: 14.0)
            shadowView.layer.masksToBounds = false
            shadowView.layer.shadowRadius = 8.0
            shadowView.layer.shadowColor = UIColor.black.cgColor
            shadowView.layer.shadowOffset = CGSize(width: width, height: height)
            shadowView.layer.shadowOpacity = 0.35
            shadowView.layer.shadowPath = shadowPath.cgPath
        }
    }
}
