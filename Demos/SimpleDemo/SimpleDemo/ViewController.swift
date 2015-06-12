//
//  ViewController.swift
//  SimpleDemo
//
//  Created by Fran_DEV on 12/06/15.
//  Copyright (c) 2015 FJBelchi. All rights reserved.
//

import UIKit
import SwiftLayout

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.buttonOK)
    }

    // MARK: Views
    
    lazy var buttonOK : UIButton = {
        let button = UIButton(frame: CGRectZero)
        button.setTitle("Ok", forState: UIControlState.Normal)
        button.alignLeft(self.view).offset(10).add()
        button.alignLeft(self.view, relation: .LessThanOrEqual).offset(10).add()
        //button.sl_alignLeft(self.view).lessThan(10).add()
        //button.sl_alignLeft(self.view, relation:.Less).offset(10).add()
        return button
    }()
    
}

