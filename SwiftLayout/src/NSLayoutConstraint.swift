//
//  NSLayoutConstraint.swift
//  SwiftLayout
//
//  Created by Fran_DEV on 12/06/15.
//  Copyright (c) 2015 FJBelchi. All rights reserved.
//

import Foundation

public extension NSLayoutConstraint {
    
    public func sl_offset(offset:Float) -> NSLayoutConstraint {
        self.constant = CGFloat(offset)
        return self
    }
    
    public func sl_add() -> NSLayoutConstraint {
        if let view = self.firstItem as? UIView {
            view.autolayoutConstraints.append(self)
        }
        return self
    }
}