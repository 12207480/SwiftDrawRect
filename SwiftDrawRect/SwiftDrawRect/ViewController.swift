//
//  ViewController.swift
//  SwiftDrawRect
//
//  Created by 沈兆良 on 16/3/7.
//  Copyright © 2016年 沈兆良. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var fill:FillView = FillView()
    var line:LineView = LineView()
    override func viewDidLoad() {
        super.viewDidLoad()
        fill.frame = CGRectMake(10, 20, 100, 100)
        view.addSubview(fill)

        line.frame = CGRectMake(10, 130, 300, 300)
        view.addSubview(line)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

