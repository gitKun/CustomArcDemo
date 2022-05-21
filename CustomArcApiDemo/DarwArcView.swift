
//
//  DarwArcView.swift
//  CustomArcApiDemo
//
//  Created by DR_Kun on 2020/5/15.
//  Copyright © 2020 kun. All rights reserved.
//

import UIKit

class DarwArcView: UIView {

    override func draw(_ rect: CGRect) {

        let path = UIBezierPath()
        var start = CGPoint(x: 160, y: 130)
        var end = CGPoint(x: 180, y: 200)
        path.move(to: start)
        path.addArc(startPoint: start, endPoint: end, angle: Double.pi * 1.6, clockwise: true)
        path.move(to: start)
        path.addArc(startPoint: start, endPoint: end, angle: Double.pi * 0.8, clockwise: true)

        start = CGPoint(x: 142, y: 130)
        end = CGPoint(x: 162, y: 200)
        path.move(to: start)
        path.addArc(startPoint: start, endPoint: end, angle: Double.pi * 0.4, clockwise: true)

        start = CGPoint(x: 140, y: 130)
        end = CGPoint(x: 160, y: 200)
        path.move(to: start)
        path.addArc(startPoint: start, endPoint: end, angle: Double.pi * 1.6, clockwise: false)
        path.move(to: start)
        path.addArc(startPoint: start, endPoint: end, angle: Double.pi * 0.8, clockwise: false)

        path.close()
        path.lineWidth = 1
        UIColor.red.setStroke()
        path.stroke()
    }
}


class DrawTestPath: UIView {

    override func draw(_ rect: CGRect) {

        let path = BezierPathCalculateTools.testPath(endAngle: .pi / 3)
        UIColor.orange.setFill()
        path.fill()

        let path2 = BezierPathCalculateTools.testPath(startAngle: .pi / 3, endAngle: .pi * 2 / 3)
        path2.lineWidth = 1
        UIColor.red.setStroke()
        path2.stroke()
    }
}


