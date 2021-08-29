//
//  ViewController.swift
//  NLSwiftSuger
//
//  Created by NealWills on 08/29/2021.
//  Copyright (c) 2021 NealWills. All rights reserved.
//

import UIKit
import SnapKit
import NLSwiftSuger

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton.newItem()
            .nl
            .set(superView: self.view)
            .set(frame: CGRect.init(x: 100, y: 150, width: 50, height: 50))
            .set(backgroundColor: UIColor.red)
            .item()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

