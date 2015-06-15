//
//  Stacking.swift
//  SwiftLayout
//
//  Created by Fran_DEV on 12/06/15.
//  Copyright (c) 2015 FJBelchi. All rights reserved.
//

import UIKit

public extension UIView {
    
    public func sl_stackHorizontal(view: UIView, relation: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .Leading, relatedBy: relation, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0.0)
    }
    
    
    
    public func sl_stackBelow(view: UIView, relation: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .Top, relatedBy: relation, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
    }
    
    public func sl_stackAbove(view: UIView, relation: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: view, attribute: .Top, relatedBy: relation, toItem: self, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
    }
    
}
