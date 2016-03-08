//
//  ViewController.swift
//  SwiftDrawRect
//
//  Created by 沈兆良 on 16/3/7.
//  Copyright © 2016年 沈兆良. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - --- interface 接口

    var fill:FillView = FillView()
    var line:LineView = LineView()
    var progressView:ProgressView = ProgressView()
    var pieView :PieView = PieView()

    // MARK: - --- lift cycle 生命周期 ---

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(fill)
        view.addSubview(line)
        view.addSubview(progressView)
        view.addSubview(slider)
        view.addSubview(pieView)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        fill.frame = CGRectMake(10, 20, 100, 100)
        line.frame = CGRectMake(10, 130, 210, 100)
        progressView.frame = CGRectMake(120, 20, 100, 100)
        pieView.frame = CGRectMake(10, 240, 100, 100)

    }

    // MARK: - --- delegate 视图委托 ---

    // MARK: - --- event response 事件相应 ---

    func changeValue(slider:UISlider) {
        progressView.progress = slider.value
    }

    // MARK: - --- private methods 私有方法 ---

    // MARK: - --- setters 属性 ---

    // MARK: - --- getters 属性 ---
    
    private lazy var slider :UISlider = {
        let slider = UISlider()
        slider.frame = CGRectMake(230, 50, 100,44)
        slider.addTarget(self, action:"changeValue:", forControlEvents: UIControlEvents.ValueChanged)
        return slider
    }()
}

