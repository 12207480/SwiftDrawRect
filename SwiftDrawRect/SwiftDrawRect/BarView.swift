//
//  BarView.swift
//  SwiftDrawRect
//
//  Created by 沈兆良 on 16/3/8.
//  Copyright © 2016年 沈兆良. All rights reserved.
//

import UIKit

class BarView: UIView {
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        setNeedsDisplay()
    }
    override func drawRect(rect: CGRect) {
        UIColor.lightGrayColor().setFill()
        UIRectFill(rect)

        let array = Array<Int>.arrayRandom()
        var x:CGFloat = 0
        var y:CGFloat = 0
        let w:CGFloat = rect.width / (2 * CGFloat(array.count) - 1)
        var h:CGFloat = 0

        for i in 0..<array.count {
            h = CGFloat(array[i]) / 100 * rect.height
            y = rect.height - h
            x = 2 * w * CGFloat(i)
            let path = UIBezierPath(rect: CGRectMake(x, y, w, h))
            UIColor.colorRandom().set()
            path.fill()

        }

    }
}
