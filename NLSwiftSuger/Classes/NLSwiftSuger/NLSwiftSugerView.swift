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
    
}

#if canImport(SnapKit)

import SnapKit

public extension NLReacitve where Base: UIView {
    
    
    @discardableResult
    public func setSnp(makeConstraints: (_ make: ConstraintMaker) -> Void, when: Bool = true) -> Self {
        if when {
            self.base.snp.makeConstraints(makeConstraints)
        }
        return self
    }
    
    @discardableResult
    public func setSnp(remakeConstraints: (_ make: ConstraintMaker) -> Void, when: Bool = true) -> Self {
        if when {
            self.base.snp.remakeConstraints(remakeConstraints)
        }
        return self
    }
    
    @discardableResult
    public func setSnp(updateConstraints: (_ make: ConstraintMaker) -> Void, when: Bool = true) -> Self {
        if when {
            self.base.snp.updateConstraints(updateConstraints)
        }
        return self
    }
    
    @discardableResult
    public func setSnpRemove(when: Bool = true) -> Self {
        if when {
            self.base.snp.removeConstraints()
        }
        return self
    }
    
}

#endif
