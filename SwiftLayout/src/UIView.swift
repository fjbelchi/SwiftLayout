//
//  UIView.swift
//  SwiftLayout
//
//  Created by Fran_DEV on 12/06/15.
//  Copyright (c) 2015 FJBelchi. All rights reserved.
//

import Foundation

private var layoutConstraintsKey = "layoutConstraintsKey"

extension UIView {
    
    internal var autolayoutConstraints: [NSLayoutConstraint] {
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
    
    func sl_alignLeft(view: UIView) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0)
    }
    
    func sl_alignTop(view: UIView) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0)
    }
    
    func sl_alignRight(view: UIView) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0)
    }
    
    func sl_alignBottom(view: UIView) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0)
    }
    
    func sl_setWidth(width: Float) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: CGFloat(width))
    }
    
    func sl_setHeight(width: Float) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: CGFloat(width))
    }
    
    func sl_stackHorizontal(view: UIView) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Trailing, multiplier: 1.0, constant: 0.0)
    }
    
    func sl_stackVertical(view: UIView) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0)
    }
    
    func sl_superviews() -> Array<UIView> {
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
    
    func sl_isAncestorOf(view: UIView) -> Bool {
        return contains(view.sl_superviews(), self) // update for swift 2
    }
    
    func sl_nearestCommonViewAncestor(view: UIView) -> UIView? {
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
    
    func installConstrains() {
        var constrains = Array<NSLayoutConstraint>()
        for view in self.subviews {
            view.setTranslatesAutoresizingMaskIntoConstraints(false)
            for constraint in view.autolayoutConstraints {
                constraint.sl_install()
            }
        }
    }
}