//
//  FillView.swift
//  SwiftDrawRect
//
//  Created by 沈兆良 on 16/3/7.
//  Copyright © 2016年 沈兆良. All rights reserved.
//

import UIKit

class FillView: UIView {

    /*
    Only override drawRect: if you perform custom drawing.
    An empty implementation adversely affects performance during animation.
    */
    override func drawRect(rect: CGRect) {
        // 1.全部填充
        UIColor.brownColor().setFill()
        UIRectFill(rect)

        // 2.笔画填充
        UIColor.orangeColor().setStroke()
        let frame = CGRectMake(10, 10, 20, 20)
        UIRectFrame(frame)
    }
}
