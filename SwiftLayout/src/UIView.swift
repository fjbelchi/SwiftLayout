//
//  UIView.swift
//  SwiftLayout
//
//  Created by fjbelchi on 12/06/15.
//  Copyright (c) 2015 SwiftLayout. All rights reserved.
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
            objc_setAssociatedObject(self, &layoutConstraintsKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    public func sl_installConstrains() {
        var constraints = Array<NSLayoutConstraint>()
        for view in self.subviews {
            constraints += view.autolayoutConstraints;
        }
        
        NSLayoutConstraint.activateConstraints(constraints)
    }
}
