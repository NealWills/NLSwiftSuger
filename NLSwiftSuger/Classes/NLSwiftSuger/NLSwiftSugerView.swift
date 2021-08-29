//
//  NLSwiftSugerView.swift
//  NLSwiftSuger
//
//  Created by Neal Wills on 2021/8/29.
//

import Foundation
import UIKit

public extension UIView {
    class func newItem() -> Self {
        let item = Self.init()
        item.backgroundColor = UIColor.init(white: 1, alpha: 0)
        return item
    }
}


public extension NLReacitve where Base: UIView {
    
    @discardableResult
    func set(frame: CGRect, when: Bool = true) -> Self {
        if when {
            self.base.frame = frame
        }
        return self
    }
    
    @discardableResult
    func set(superView: UIView?, when: Bool = true) -> Self {
        if when {
            superView?.addSubview(self.base)
        }
        return self
    }
    
    @discardableResult
    func set(backgroundColor: UIColor?, when: Bool = true) -> Self {
        if when {
            self.base.backgroundColor = backgroundColor
        }
        return self
    }
    
    @discardableResult
    func set(isUserInteractionEnabled: Bool?, when: Bool = true) -> Self {
        if when {
            self.base.isUserInteractionEnabled = isUserInteractionEnabled ?? true
        }
        return self
    }
    
    @discardableResult
    func set(clipsToBounds: Bool, when: Bool = true) -> Self {
        if when {
            self.base.clipsToBounds = clipsToBounds
        }
        return self
    }
    
    @discardableResult
    func set(layerCornerRadius: CGFloat?, when: Bool = true) -> Self {
        if when {
            self.base.layer.cornerRadius = layerCornerRadius ?? 0
        }
        return self
    }
    
    @discardableResult
    func set(layerBorderWidth: CGFloat?, when: Bool = true) -> Self {
        if when {
            self.base.layer.borderWidth = layerBorderWidth ?? 0
        }
        return self
    }
    
    @discardableResult
    func set(layerBorderColor: UIColor?, when: Bool = true) -> Self {
        if when {
            self.base.layer.borderColor = layerBorderColor?.cgColor
        }
        return self
    }
    
    @discardableResult
    func set(alpha: CGFloat?, when: Bool = true) -> Self {
        if when {
            self.base.alpha = alpha ?? 1.0
        }
        return self
    }
    
    @discardableResult
    func set(hidden: Bool?, when: Bool = true) -> Self {
        if when {
            self.base.isHidden = hidden ?? false
        }
        return self
    }
    
    @discardableResult
    func set(tapGes selector:Selector, target: Any) -> Self {
        
        let tapGes = UITapGestureRecognizer.init(target: target, action: selector)
        tapGes.numberOfTouchesRequired = 1
        self.base.addGestureRecognizer(tapGes)
        
        return self
    }
    
}
