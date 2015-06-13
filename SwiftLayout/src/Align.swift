//
//  Align.swift
//  SwiftLayout
//
//  Created by fjbelchi on 12/06/15.
//  Copyright (c) 2015 SwiftLayout. All rights reserved.

import Foundation

public extension UIView {
    /** 
    Create a NSLayoutConstraint with Left Alignment.
    
        let leftEqualConstraint = button.sl_alignLeft(label)
        let leftGeaterConstraint = button.sl_alignLeft(label, relation:.GreaterThanOrEqual)

    :param: view to align.
    :param: relation between the views.
    
    :returns: NSLayoutConstraint.
    */
    public func sl_alignLeft(view: UIView, relation: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .Left, relatedBy: relation, toItem: view, attribute: .Left, multiplier: 1.0, constant: 0.0)
    }
    
    /**
    Create a NSLayoutConstraint with Top Alignment.
    
        let topEqualConstraint = button.sl_alignTop(label)
        let topGeaterConstraint = button.sl_alignTop(label, relation:.GreaterThanOrEqual)
    
    :param: view to align.
    :param: relation between the views.
    
    :returns: NSLayoutConstraint.
    */
    public func sl_alignTop(view: UIView, relation: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .Top, relatedBy: relation, toItem: view, attribute: .Top, multiplier: 1.0, constant: 0.0)
    }
    
    /**
    Create a NSLayoutConstraint with Right Alignment.
    
        let rightEqualConstraint = button.sl_alignRight(label)
        let rightGeaterConstraint = button.sl_alignRight(label, relation:.GreaterThanOrEqual)
    
    :param: view to align.
    :param: relation between the views.
    
    :returns: NSLayoutConstraint.
    */
    public func sl_alignRight(view: UIView, relation: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .Right, relatedBy: relation, toItem: view, attribute: .Right, multiplier: 1.0, constant: 0.0)
    }
    
    /**
    Create a NSLayoutConstraint with Bottom Alignment.
    
        let bottomEqualConstraint = button.sl_alignBottom(label)
        let bottomGeaterConstraint = button.sl_alignBottom(label, relation:.GreaterThanOrEqual)
    
    :param: view to align.
    :param: relation between the views.
    
    :returns: NSLayoutConstraint.
    */
    public func sl_alignBottom(view: UIView, relation: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .Bottom, relatedBy: relation, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
    }
    
    /**
    Create a NSLayoutConstraint with Leading Alignment.
    
        let leadingEqualConstraint = button.sl_alignLeading(label)
        let leadingGeaterConstraint = button.sl_alignLeading(label, relation:.GreaterThanOrEqual)
    
    :param: view to align.
    :param: relation between the views.
    
    :returns: NSLayoutConstraint.
    */
    public func sl_alignLeading(view: UIView, relation: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .Leading, relatedBy: relation, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0.0)
    }
    
    /**
    Create a NSLayoutConstraint with Trailing Alignment.
    
        let trailingEqualConstraint = button.sl_alignTrailing(label)
        let trailingGeaterConstraint = button.sl_alignTrailing(label, relation:.GreaterThanOrEqual)
    
    :param: view to align.
    :param: relation between the views.
    
    :returns: NSLayoutConstraint.
    */
    public func sl_alignTrailing(view: UIView, relation: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .Trailing, relatedBy: relation, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0.0)
    }
}
