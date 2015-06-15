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
        self.view.addSubview(self.buttonNext)
        
        self.view.sl_installConstrains()
    }

    // MARK: Views
    
    lazy var buttonOK : UIButton = {
        let button = UIButton(frame: CGRectZero)
        button.setTitle("Ok", forState: .Normal)
        button.sl_alignTop(self.view).offset(200).add()
        button.sl_alignLeading(self.view).offset(10).add()
        return button
    }()
    
    lazy var buttonNext: UIButton = {
        let button = UIButton(frame: CGRectZero)
        button.setTitle("Next", forState: .Normal)
        button.sl_alignLeading(self.buttonOK).add()
        button.sl_stackBelow(self.buttonOK).offset(20).add()
        return button
    }()
    
}

