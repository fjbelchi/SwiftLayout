//
//  XCTestCase.swift
//  SwiftLayout
//
//  Created by Fran_DEV on 15/06/15.
//  Copyright (c) 2015 FJBelchi. All rights reserved.
//

import XCTest
import UIKit

extension XCTest {
    
    public func testConstraint(constraint: NSLayoutConstraint,
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
            XCTAssertEqual(constraint.relation, relation, "has to be equal")
            XCTAssertEqual(constraint.constant, constant, "has to be equal")
            XCTAssertEqual(constraint.multiplier, multipler, "has to equal")
    }
}
