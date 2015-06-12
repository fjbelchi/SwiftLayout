//
//  NSLayoutConstraint.swift
//  SwiftLayout
//
//  Created by Fran_DEV on 12/06/15.
//  Copyright (c) 2015 FJBelchi. All rights reserved.
//

import Foundation

public extension NSLayoutConstraint {
    
    public func offset(offset:Float) -> NSLayoutConstraint {
        self.constant = CGFloat(offset)
        return self
    }
    
    public func sl_add() -> NSLayoutConstraint {
        if let view = self.firstItem as? UIView {
            view.autolayoutConstraints.append(self)
        }
        return self
    }
    
    public func sl_install() -> NSLayoutConstraint {
        // refactor with guard
        if let firstView = self.firstItem as? UIView {
            
            // check if constraint is unary = secondItem = nil
            if let secondView = self.secondItem as? UIView,
                let view = firstView.sl_nearestCommonViewAncestor(secondView) {
                    view.addConstraint(self)
            } else {
                firstView.addConstraint(self)
                return self
            }
            
        } else {
            return self;
        }
        
        return self
    }
}