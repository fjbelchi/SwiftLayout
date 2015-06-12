//
//  UIView.swift
//  SwiftLayout
//
//  Created by Fran_DEV on 12/06/15.
//  Copyright (c) 2015 FJBelchi. All rights reserved.
//

import UIKit

private var layoutConstraintsKey = "layoutConstraintsKey"

public extension UIView {
    
    public var autolayoutConstraints: [NSLayoutConstraint] {
        get {
            if let constraints = objc_getAssociatedObject(self, &layoutConstraintsKey) as? [NSLayoutConstraint] {
                return constraints
            }
            return []
        }
        set {
            objc_setAssociatedObject(self, &layoutConstraintsKey, newValue, UInt(OBJC_ASSOCIATION_RETAIN_NONATOMIC))
        }
    }
    
    public func sl_setWidth(width: Float) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: CGFloat(width))
    }
    
    public func sl_setHeight(width: Float) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: CGFloat(width))
    }
    
    public func sl_stackHorizontal(view: UIView) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0.0)
    }
    
    public func sl_stackVertical(view: UIView) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
    }
    
    public func sl_superviews() -> Array<UIView> {
        var superviews : Array<UIView> = []
        var view : UIView? = self.superview
        while view != nil {
            superviews.append(view!)
            if let superview = view!.superview {
                view = superview
            } else {
                view = nil
            }
        }
        
        return superviews
    }
    
    public func sl_isAncestorOf(view: UIView) -> Bool {
        return contains(view.sl_superviews(), self) // update for swift 2
    }
    
    public func sl_nearestCommonViewAncestor(view: UIView) -> UIView? {
        if (self == view) {
            return self
        }
        
        if (self.sl_isAncestorOf(view)) {
            return self
        }
        
        if (view.sl_isAncestorOf(self)) {
            return view
        }
        
        let ancestors = self.sl_superviews()
        
        for viewInSuperviews in view.sl_superviews() {
            if contains(ancestors,viewInSuperviews) { // update for swift 2
                return viewInSuperviews
            }
        }
        
        return nil;
    }
    
    public func sl_installConstrains() {
        var constrains = Array<NSLayoutConstraint>()
        for view in self.subviews {
            view.setTranslatesAutoresizingMaskIntoConstraints(false)
            for constraint in view.autolayoutConstraints {
                constraint.sl_install()
            }
        }
    }
}

    // MARK: Alignment

