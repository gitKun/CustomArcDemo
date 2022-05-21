//
//  ArcPath.swift
//  CustomArcApiDemo
//
//  Created by DR_Kun on 2020/5/16.
//  Copyright © 2020 kun. All rights reserved.
//

import Foundation
import UIKit


extension UIBezierPath {
    func addHumenArc(withCenter center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool) {
        let rotationAdjustment = CGFloat(Double.pi * 0.5)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment

        addArc(withCenter: center, radius: radius, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: clockwise)
    }

    func addRotationArc(withCenter center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool, rotationAngle: CGFloat = .pi / 2) {
        let modifiedStart = startAngle - rotationAngle
        let modifiedEnd = endAngle - rotationAngle

        addArc(withCenter: center, radius: radius, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: clockwise)
    }
}


extension UIBezierPath {
    /// Internal principle: Determine the position of the center of the circle through the `start` point, `end` point and `angle`.
    /// And then draw the arc according to `clockwise`
    ///
    /// Note: After the arc is drawn, the `move(to:)` method will be called to move to the `end` point.
    /// - Parameters:
    ///   - start: The start point of the arc. (Note: This may not be the start  point for drawing)
    ///   - end: The end point of the arc. (Note: This may not be the end point of the drawing)
    ///   - angle: The number of radians of the arc corresponding to the start point and end point;value must be between 0...2π
    ///   - clockwise: When the value is true, draw from start to end, when the value is false, draw from end to start
    func addArc(startPoint start: CGPoint, endPoint end: CGPoint, angle: Double, clockwise: Bool) {
        
        guard start != end && (angle >= 0 && angle <= 2 * Double.pi) else {
            return
        }
        if angle == 0 {
            move(to: start)
            addLine(to: end)
            return
        }
        
        var tmpStart = start, tmpEnd = end, tmpAngle = angle
        // Note: 保证计算圆心时是从 start 到 end 小于 π 的角
        if tmpAngle > Double.pi {
            tmpAngle = 2 * Double.pi - tmpAngle
            (tmpStart, tmpEnd) = (tmpEnd, tmpStart)
        }
        if !clockwise {
            (tmpStart, tmpEnd) = (tmpEnd, tmpStart)
        }
        
        let center = calculateCenterFor(startPoint: tmpStart, endPoint: tmpEnd, radian: tmpAngle)
        let radius = calculateLineLength(start, center)
        
        var startAngle = calculateAngle(point: start, origin: center)
        var endAngle = calculateAngle(point: end, origin: center)
        // 如果逆时针绘制,则交换 startAngle 和 endAngle
        if !clockwise {
            (startAngle, endAngle) = (endAngle, startAngle)
            move(to: end)
        }
        
        addArc(withCenter: center, radius: radius, startAngle: CGFloat(startAngle), endAngle: CGFloat(endAngle), clockwise: true)
        move(to: end)
    }
}

// MARK: 计算
extension UIBezierPath {
    // Woring: 只计算从start到end **顺时针** 计算对应的 **小于π** 圆弧对应的圆心
    // Note: 计算逆时针(end到start)可以看做将传入的start和end对调后计算顺时针时的圆心位置
    // Note: 计算大于π的叫相当于将end和start对换后计算2π-angle的顺时针圆心位置
    fileprivate func calculateCenterFor(startPoint start: CGPoint, endPoint end: CGPoint, radian: Double) -> CGPoint {
        guard radian <= Double.pi else {
            fatalError("Does not support radian calculations greater than π!")
        }
        
        guard start != end else {
            fatalError("Start position and end position cannot be equal!")
        }
        
        if radian == Double.pi {
            let centerX = (end.x - start.x) * 0.5 + start.x
            let centerY = (end.y - start.y) * 0.5 + start.y
            return CGPoint(x: centerX, y: centerY)
        }
        
        let lineAB = calculateLineLength(start, end)
        
        // 平行 Y 轴
        if start.x == end.x {
            let centerY = (end.y - start.y) * 0.5 + start.y
            let tanResult = CGFloat(tan(radian * 0.5))
            let offsetX = lineAB * 0.5 / tanResult
            let centerX = start.x + offsetX * (start.y > end.y ? 1.0 : -1.0)
            return CGPoint(x: centerX, y: centerY)
        }
        
        // 平行 X 轴
        if start.y == end.y {
            let centerX = (end.x - start.x) * 0.5 + start.x
            let tanResult = CGFloat(tan(radian * 0.5))
            let offsetY = lineAB * 0.5 / tanResult
            let centerY = start.y + offsetY * (start.x < end.x ? 1.0 : -1.0)
            return CGPoint(x: centerX, y: centerY)
        }
        
        // 普通情况
        
        // 计算半径
        let radius = lineAB * 0.5 / CGFloat(sin(radian * 0.5))
        // 计算与 Y 轴的夹角
        let angleToYAxis = atan(abs(start.x - end.x) / abs(start.y - end.y))
        let cacluteAngle = CGFloat(Double.pi - radian) * 0.5 - angleToYAxis
        // 偏移量
        let offsetX = radius * sin(cacluteAngle)
        let offsetY = radius * cos(cacluteAngle)
        
        var centetX = end.x
        var centerY = end.y
        // 以 start 为原点判断象限区间
        if end.x > start.x && end.y < start.y {
            // 第一象限
            centetX = end.x + offsetX
            centerY = end.y + offsetY
        } else if end.x > start.x && end.y > start.y {
            // 第二象限
            centetX = start.x - offsetX
            centerY = start.y + offsetY
        } else if end.x < start.x && end.y > start.y {
            // 第三象限
            centetX = end.x - offsetX
            centerY = end.y - offsetY
        } else if end.x < start.x && end.y < start.y {
            // 第四象限
            centetX = start.x + offsetX
            centerY = start.y - offsetY
        }
        
        return CGPoint(x: centetX, y: centerY)
    }

    fileprivate func calculateAngle(point: CGPoint, origin: CGPoint) -> Double {
       
        if point.y == origin.y {
            return point.x > origin.x ? 0.0 : -Double.pi
        }
        
        if point.x == origin.x {
            return point.y > origin.y ? Double.pi * 0.5 : Double.pi * -0.5
        }
        // Note: 修正标准坐标系角度到 iOS 坐标系
        let rotationAdjustment = Double.pi * 0.5
        
        let offsetX = point.x - origin.x
        let offsetY = point.y - origin.y
        // 使用 -offsetY 是因为 iOS 坐标系与标准坐标系的区别
        if offsetY > 0 {
            return Double(atan(offsetX / -offsetY)) + rotationAdjustment
        } else {
            return Double(atan(offsetX / -offsetY)) - rotationAdjustment
        }
    }

    fileprivate func calculateLineLength(_ point1: CGPoint, _ point2: CGPoint) -> CGFloat {
        let w = point1.x - point2.x
        let h = point1.y - point2.y
        return sqrt(w * w + h * h)
    }
}
