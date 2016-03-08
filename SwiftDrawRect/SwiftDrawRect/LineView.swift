//
//  LineView.swift
//  SwiftDrawRect
//
//  Created by 沈兆良 on 16/3/7.
//  Copyright © 2016年 沈兆良. All rights reserved.
//

import UIKit

class LineView: UIView {
    // 绘图的步骤： 1.获取上下文 2.创建路径（描述路径） 3.把路径添加到上下文 4.渲染上下文
    // 通常在这个方法里面绘制图形
    // 为什么要再drawRect里面绘图，只有在这个方法里面才能获取到跟View的layer相关联的图形上下文
    // 什么时候调用:当这个View要显示的时候才会调用drawRect绘制图形，
    // 注意：rect是当前控件的bounds
    override func drawRect(rect: CGRect) {
        // 0.添加背景色
//        UIColor.lightGrayColor().setFill()
        UIColor.colorRandom().setFill()
        UIRectFill(rect)

        // 1.0.绘制曲线
        // 原生绘制方法
        // 获取上下文
        let ctx = UIGraphicsGetCurrentContext()
        // 描述路径
        // 设置起点
        CGContextMoveToPoint(ctx, 10, 10)
        // cpx:控制点的x
        CGContextAddQuadCurveToPoint(ctx, 30, 20, 10, 30)
        // 渲染上下文
        CGContextStrokePath(ctx)

        // 1.1.绘制直线
        let ctx1 = UIGraphicsGetCurrentContext()
        CGContextMoveToPoint(ctx1, 10, 40)
        CGContextAddLineToPoint(ctx1, 30, 60)
        CGContextStrokePath(ctx1)

        // 1.2.绘制贝塞尔曲线
        let ctx2 = UIGraphicsGetCurrentContext()
        CGContextMoveToPoint(ctx2, 40, 10)
        CGContextAddCurveToPoint(ctx2, 50, 20, 50, 30, 40, 40)
        CGContextStrokePath(ctx2)

        // 2.0使用贝塞尔绘制直线
        let path = UIBezierPath()
        path.moveToPoint(CGPointMake(50, 50))
        path.addLineToPoint(CGPointMake(60, 60))
        path.lineWidth = 3
        UIColor.redColor().set()
        path.stroke()

        // 2.1绘制线的连接
        // 获取上下文
        let ctx3 = UIGraphicsGetCurrentContext()
        // 起点
        CGContextMoveToPoint(ctx3, 100, 10)
        CGContextAddLineToPoint(ctx3, 150, 10)
        // 设置起点,默认下一根线的起点就是上一根线终点
//        CGContextMoveToPoint(ctx3, 120, 20)
        CGContextAddLineToPoint(ctx3, 150, 60)
        // 设置绘图状态,一定要在渲染之前
        // 颜色
        UIColor.greenColor().setStroke()
        // 线宽
        CGContextSetLineWidth(ctx3, 10)
        // 设置连接样式,Miter直角连接,Round圆滑衔接,Bevel斜角连接
        CGContextSetLineJoin(ctx3, CGLineJoin.Bevel)
        // 设置顶角样式,Butt默认,Round轻微圆角,Square正方形
        CGContextSetLineCap(ctx3, CGLineCap.Butt)
        // 渲染上下文
        CGContextStrokePath(ctx3)

        // 2.2.最原始的绘图方式
        // 目前我们所用的上下文都是以UIGraphics
        // CGContextRef Ref：引用 CG:目前使用到的类型和函数 一般都是CG开头 CoreGraphics
        let ctx4 = UIGraphicsGetCurrentContext();
        // 描述路径
        // 创建路径
        let pathCG = CGPathCreateMutable();
        // 设置起点
        // path：给哪个路径设置起点
        CGPathMoveToPoint(pathCG, nil, 50, 50)
        // 添加一根线到某个点
        CGPathAddLineToPoint(pathCG, nil, 100, 100)
        // 3.把路径添加到上下文
        CGContextAddPath(ctx4, pathCG)
        // 4.渲染上下文
        CGContextStrokePath(ctx4)

    }

}
