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
    var progressView:ProgressView = ProgressView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(fill)
        view.addSubview(line)
        view.addSubview(progressView)
        view.addSubview(slider)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        fill.frame = CGRectMake(10, 20, 100, 100)
        line.frame = CGRectMake(10, 130, 300, 300)
        progressView.frame = CGRectMake(120, 20, 100, 100)

    }

    func changeValue(slider:UISlider) {
        progressView.progress = slider.value
    }

    private lazy var slider :UISlider = {
        let slider = UISlider()
        slider.frame = CGRectMake(230, 50, 100,44)
        slider.addTarget(self, action:"changeValue:", forControlEvents: UIControlEvents.ValueChanged)
        return slider
    }()
}

