//
//  ProgressView.swift
//  SwiftDrawRect
//
//  Created by 沈兆良 on 16/3/7.
//  Copyright © 2016年 沈兆良. All rights reserved.
//

import UIKit

class ProgressView: UIView {

    var progress : Float = 0.0 {
        didSet {
            setNeedsDisplay()
        }
    }

    override func drawRect(rect: CGRect) {
        UIColor.magentaColor().setFill()
        UIRectFill(rect)

        let radius = rect.size.width * 0.5
        let center = CGPointMake(radius, radius)
        let endA = -M_PI_2 + Double(progress) * M_PI * 2
        let path = UIBezierPath(arcCenter: center, radius: radius, startAngle:CGFloat(-M_PI_2), endAngle: CGFloat(endA), clockwise: true)

        UIColor.orangeColor().set()
        path.lineWidth = 3
        path.stroke()
    }
}
