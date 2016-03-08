//
//  PieView.swift
//  SwiftDrawRect
//
//  Created by 沈兆良 on 16/3/8.
//  Copyright © 2016年 沈兆良. All rights reserved.
//

import UIKit

class PieView: UIView {

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        setNeedsDisplay()
    }

    override func drawRect(rect: CGRect)
    {

        UIColor.whiteColor().setFill()
        UIRectFill(rect)

        let array = Array<Int>.arrayRandom()
        let radius : CGFloat = rect.width / 2
        let center = CGPointMake(radius, radius)
        var startA : CGFloat = 0
        var angle : CGFloat = 0
        var endA  : CGFloat = 0
        for i in 0..<array.count {
            startA = endA
            angle = CGFloat(array[i]) * CGFloat(M_PI * 2) / 100
            endA = startA + angle
            let path = UIBezierPath(arcCenter: center, radius: radius
                , startAngle: startA, endAngle: endA, clockwise: true)
            path.addLineToPoint(center)
            UIColor.colorRandom().set()
            path.fill()
        }
    }
}
