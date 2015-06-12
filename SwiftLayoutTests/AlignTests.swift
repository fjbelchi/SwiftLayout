//
//  AlignTests.swift
//  SwiftLayout
//
//  Created by fjbelchi on 12/06/15.
//  Copyright (c) 2015 FJBelchi. All rights reserved.
//

import UIKit
import XCTest
import SwiftLayout

class AlignTests: XCTestCase {
    
    let view1 = UIView(frame: CGRectZero)
    let view2 = UIView(frame: CGRectZero)
    
    private func testConstraint(constraint: NSLayoutConstraint,
        firstItem: UIView,
        firstAttribute : NSLayoutAttribute,
        secondItem: UIView,
        secondAttribute : NSLayoutAttribute,
        relation: NSLayoutRelation,
        constant: CGFloat,
        multipler: CGFloat) {
            XCTAssertEqual(constraint.firstItem as! UIView, firstItem, "has to be the same object")
            XCTAssertEqual(constraint.firstAttribute, firstAttribute, "has to be the same firstAttribute")
            XCTAssertEqual(constraint.secondItem as! UIView, secondItem, "has to be the same object")
            XCTAssertEqual(constraint.secondAttribute, secondAttribute, "has to be the same secondAttribute")
            XCTAssertEqual(constraint.relation, relation, "has to be the equal")
            XCTAssertEqual(constraint.constant, constant, "has to be the match")
            XCTAssertEqual(constraint.multiplier, multipler, "has to be the one")
    }

    // MARK: Left
    
    func testAlignLeftEqual() {
        let constraint = view1.sl_alignLeft(view2)
        testConstraint(constraint, firstItem: view1, firstAttribute: .Left, secondItem: view2, secondAttribute: .Left, relation: .Equal, constant: 0.0, multipler: 1.0)
    }
    
    func testAlignLeftLessThanOrEqual() {
        let constraint = view1.sl_alignLeft(view2, relation:.LessThanOrEqual)
        testConstraint(constraint, firstItem: view1, firstAttribute: .Left, secondItem: view2, secondAttribute: .Left, relation: .LessThanOrEqual, constant: 0.0, multipler: 1.0)
    }
    
    func testAlignLeftGreaterThanOrEqual() {
        let constraint = view1.sl_alignLeft(view2, relation:.GreaterThanOrEqual)
        testConstraint(constraint, firstItem: view1, firstAttribute: .Left, secondItem: view2, secondAttribute: .Left, relation: .GreaterThanOrEqual, constant: 0.0, multipler: 1.0)
    }
    
    // MARK: Right
    
    func testAlignRightEqual() {
        let constraint = view1.sl_alignRight(view2)
        testConstraint(constraint, firstItem: view1, firstAttribute: .Right, secondItem: view2, secondAttribute: .Right, relation: .Equal, constant: 0.0, multipler: 1.0)
    }
    
    func testAlignRightLessThanOrEqual() {
        let constraint = view1.sl_alignRight(view2, relation:.LessThanOrEqual)
        testConstraint(constraint, firstItem: view1, firstAttribute: .Right, secondItem: view2, secondAttribute: .Right, relation: .LessThanOrEqual, constant: 0.0, multipler: 1.0)
    }
    
    func testAlignRightGreaterThanOrEqual() {
        let constraint = view1.sl_alignRight(view2, relation:.GreaterThanOrEqual)
        testConstraint(constraint, firstItem: view1, firstAttribute: .Right, secondItem: view2, secondAttribute: .Right, relation: .GreaterThanOrEqual, constant: 0.0, multipler: 1.0)
    }
    
    // MARK: Top
    
    func testAlignTopEqual() {
        let constraint = view1.sl_alignTop(view2)
        testConstraint(constraint, firstItem: view1, firstAttribute: .Top, secondItem: view2, secondAttribute: .Top, relation: .Equal, constant: 0.0, multipler: 1.0)
    }
    
    func testAlignTopLessThanOrEqual() {
        let constraint = view1.sl_alignTop(view2, relation:.LessThanOrEqual)
        testConstraint(constraint, firstItem: view1, firstAttribute: .Top, secondItem: view2, secondAttribute: .Top, relation: .LessThanOrEqual, constant: 0.0, multipler: 1.0)
    }
    
    func testAlignTopGreaterThanOrEqual() {
        let constraint = view1.sl_alignTop(view2, relation:.GreaterThanOrEqual)
        testConstraint(constraint, firstItem: view1, firstAttribute: .Top, secondItem: view2, secondAttribute: .Top, relation: .GreaterThanOrEqual, constant: 0.0, multipler: 1.0)
    }
    
    // MARK: Bottom
    
    func testAlignBottomEqual() {
        let constraint = view1.sl_alignBottom(view2)
        testConstraint(constraint, firstItem: view1, firstAttribute: .Bottom, secondItem: view2, secondAttribute: .Bottom, relation: .Equal, constant: 0.0, multipler: 1.0)
    }
    
    func testAlignBottomLessThanOrEqual() {
        let constraint = view1.sl_alignBottom(view2, relation:.LessThanOrEqual)
        testConstraint(constraint, firstItem: view1, firstAttribute: .Bottom, secondItem: view2, secondAttribute: .Bottom, relation: .LessThanOrEqual, constant: 0.0, multipler: 1.0)
    }
    
    func testAlignBottomGreaterThanOrEqual() {
        let constraint = view1.sl_alignBottom(view2, relation:.GreaterThanOrEqual)
        testConstraint(constraint, firstItem: view1, firstAttribute: .Bottom, secondItem: view2, secondAttribute: .Bottom, relation: .GreaterThanOrEqual, constant: 0.0, multipler: 1.0)
    }
    
    // MARK: Leading
    
    func testAlignLeadingEqual() {
        let constraint = view1.sl_alignLeading(view2)
        testConstraint(constraint, firstItem: view1, firstAttribute: .Leading, secondItem: view2, secondAttribute: .Leading, relation: .Equal, constant: 0.0, multipler: 1.0)
    }
    
    func testAlignLeadingLessThanOrEqual() {
        let constraint = view1.sl_alignLeading(view2, relation:.LessThanOrEqual)
        testConstraint(constraint, firstItem: view1, firstAttribute: .Leading, secondItem: view2, secondAttribute: .Leading, relation: .LessThanOrEqual, constant: 0.0, multipler: 1.0)
    }
    
    func testAlignLeadingGreaterThanOrEqual() {
        let constraint = view1.sl_alignLeading(view2, relation:.GreaterThanOrEqual)
        testConstraint(constraint, firstItem: view1, firstAttribute: .Leading, secondItem: view2, secondAttribute: .Leading, relation: .GreaterThanOrEqual, constant: 0.0, multipler: 1.0)
    }
    
    // MARK: Trailing
    
    func testAlignTrailingEqual() {
        let constraint = view1.sl_alignTrailing(view2)
        testConstraint(constraint, firstItem: view1, firstAttribute: .Trailing, secondItem: view2, secondAttribute: .Trailing, relation: .Equal, constant: 0.0, multipler: 1.0)
    }
    
    func testAlignTrailingLessThanOrEqual() {
        let constraint = view1.sl_alignTrailing(view2, relation:.LessThanOrEqual)
        testConstraint(constraint, firstItem: view1, firstAttribute: .Trailing, secondItem: view2, secondAttribute: .Trailing, relation: .LessThanOrEqual, constant: 0.0, multipler: 1.0)
    }
    
    func testAlignTrailingGreaterThanOrEqual() {
        let constraint = view1.sl_alignTrailing(view2, relation:.GreaterThanOrEqual)
        testConstraint(constraint, firstItem: view1, firstAttribute: .Trailing, secondItem: view2, secondAttribute: .Trailing, relation: .GreaterThanOrEqual, constant: 0.0, multipler: 1.0)
    }
}
