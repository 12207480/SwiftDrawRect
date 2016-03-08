//
//  LineChart.swift
//  SwiftDrawRect
//
//  Created by 沈兆良 on 16/3/8.
//  Copyright © 2016年 沈兆良. All rights reserved.
//

import UIKit

class LineChart: UIView {

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        setNeedsDisplay()
    }

    override func drawRect(rect: CGRect) {
        RGB(230, g: 230, b: 230).setFill()
        UIRectFill(rect)

        let array = Array<Int>.arrayRandom()
        let w = rect.width / CGFloat(array.count + 1)

        var pointStart = CGPointMake(0, rect.height)
        var pointEnd = CGPointZero
        for i in 0..<array.count {
            
            pointEnd.x += w
            pointEnd.y = (1 - CGFloat(array[i]) / 100.0) * rect.height

            let path = UIBezierPath()
            path.moveToPoint(pointStart)
            path.addLineToPoint(pointEnd)
            path.lineWidth = 3
            path.lineJoinStyle = CGLineJoin.Round
            UIColor.colorRandom().set()
            path.stroke()
            pointStart = pointEnd
        }

    }

}
