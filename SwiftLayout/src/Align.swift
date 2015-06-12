//
//  Align.swift
//  SwiftLayout
//
//  Created by Fran_DEV on 12/06/15.
//  Copyright (c) 2015 FJBelchi. All rights reserved.
//

import Foundation

public extension UIView {
    
    public func sl_alignLeft(view: UIView, relation: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1.0, constant: 0.0)
    }
    
    public func sl_alignTop(view: UIView) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 0.0)
    }
    
    public func sl_alignRight(view: UIView) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .Right, relatedBy: .Equal, toItem: view, attribute: .Right, multiplier: 1.0, constant: 0.0)
    }
    
    public func sl_alignBottom(view: UIView) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
    }
    
    public func sl_alignLeading(view: UIView) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0.0)
    }
}
