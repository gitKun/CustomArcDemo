//
/*
* ****************************************************************
*
* 文件名称 : BezierPathCalculateTools
* 作   者 : Created by 坤
* 创建时间 : 2022/5/20 19:15
* 文件描述 : 
* 注意事项 : 
* 版权声明 : Copyright © 2022 kun. All rights reserved.
* 修改历史 : 2022/5/20 初始版本
*
* ****************************************************************
*/

import Foundation
import UIKit

/// 命名空间
enum BezierPathCalculateTools {

    static func calculatePoint(wiht centerPoint: CGPoint, radius: CGFloat, angle: CGFloat) -> CGPoint {
        guard !radius.isLessThanOrEqualTo(.zero) else { return centerPoint }

        let pX = centerPoint.x + radius * cos(angle)
        let pY = centerPoint.y + radius * sin(angle)
        return CGPoint(x: pX, y: pY)
    }

    /// 根据传入的角度, 返回正常计算的角度
    static func humenAngle(from angle: CGFloat) -> CGFloat {
        let rotationAdjustment = CGFloat.pi / 2
        return angle - rotationAdjustment
    }
}

// MARK: - 命名空间

extension BezierPathCalculateTools {

    struct SplitLineInfo {
        let lineWidth: CGFloat
        let lineColor: UIColor

        static let `default`: SplitLineInfo = .init(lineWidth: 1, lineColor: .white)
    }

    struct RingInfo {
        let fillColor: UIColor
        let angle: CGFloat
    }
}

extension BezierPathCalculateTools {

    /// 生成圆环形的饼状图
    /// - Parameters:
    ///   - ringInfoArray: 圆环的信息数组
    ///   - targetSize: 绘制图片的大小(内部默认使用屏幕 scale 作为图片的 scale)
    ///   - drawCenter: 绘制圆环的中心点
    ///   - radius: 外径
    ///   - ringHeihgt: 圆环的高度
    ///   - splitLineInfo: 是否需要分割线, 默认为 nil
    ///   - backgroudColor: 绘制图片的背景色, 默认为 nil
    ///   - rotationAngle: 绘制的起始点(iOS 坐标系和数学坐标系不相同), 默认 -(π/2)
    /// - Returns: 绘制的 image
    static func generateImage(
        from ringInfoArray: [RingInfo],
        targetSize: CGSize,
        drawCenter: CGPoint,
        radius: CGFloat,
        ringHeihgt: CGFloat,
        splitLineInfo: SplitLineInfo? = nil,
        backgroudColor: UIColor? = nil,
        rotationAngle: CGFloat = -(.pi / 2)
    ) -> UIImage? {
        guard !ringInfoArray.isEmpty else { return nil }

        UIGraphicsBeginImageContextWithOptions(targetSize, false, UIScreen.main.scale)
        defer { UIGraphicsEndImageContext() }

        var innerRadius = radius - ringHeihgt
        if innerRadius.isLessThanOrEqualTo(.zero) { innerRadius = .zero }

        if let backgroudColor = backgroudColor {
            let bgPath = UIBezierPath(rect: CGRect(origin: .zero, size: targetSize))
            bgPath.close()
            backgroudColor.setFill()
            bgPath.fill()
        }

        var linePath: UIBezierPath?
        var lineColor: UIColor?
        if let splitLineInfo = splitLineInfo {
            linePath = UIBezierPath()
            linePath?.lineWidth = splitLineInfo.lineWidth
            lineColor = splitLineInfo.lineColor
        }

        var startAngle = rotationAngle
        var endAngle = rotationAngle

        for ringInfo in ringInfoArray {
            endAngle += ringInfo.angle

            let bezierPath = UIBezierPath()
            let outerStartPoint = calculatePoint(wiht: drawCenter, radius: radius, angle: startAngle)
            let innerStartPoint = calculatePoint(wiht: drawCenter, radius: innerRadius, angle: startAngle)
            let innerEndPoint = calculatePoint(wiht: drawCenter, radius: innerRadius, angle: endAngle)

            bezierPath.move(to: innerStartPoint)
            bezierPath.addLine(to: outerStartPoint)
            bezierPath.addArc(withCenter: drawCenter, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
            bezierPath.addLine(to: innerEndPoint)
            bezierPath.addArc(withCenter: drawCenter, radius: innerRadius, startAngle: endAngle, endAngle: startAngle, clockwise: false)

            // 绘制 圆环
            bezierPath.close()
            ringInfo.fillColor.setFill()
            bezierPath.fill()

            startAngle = endAngle

            if let linePath = linePath {
                let outEndPoint = calculatePoint(wiht: drawCenter, radius: radius, angle: endAngle)
                linePath.move(to: innerEndPoint)
                linePath.addLine(to: outEndPoint)

                // 绘制 分割线
                linePath.close()
                lineColor?.setStroke()
                linePath.stroke()
            }
        }

        let image = UIGraphicsGetImageFromCurrentImageContext()

        return image
    }
}

// MARK: - extension

fileprivate extension CGFloat {
    func humenAngle() -> CGFloat {
        let rotationAdjustment = CGFloat.pi / 2
        return self - rotationAdjustment
    }
}


// MARK: - 测试

extension BezierPathCalculateTools {

    static func testGetImage(
        with size: CGSize = CGSize(width: 200, height: 200),
        center: CGPoint = CGPoint(x: 100, y: 100),
        radius: CGFloat = 80,
        height: CGFloat = 30,
        startAngle: CGFloat = .zero,
        endAngle: CGFloat = .pi / 6,
        rotationAngle: CGFloat = .pi / 2
    ) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(size, false, UIScreen.main.scale)
        defer { UIGraphicsEndImageContext() }

//        let bgPath = UIBezierPath.init(rect: CGRect(origin: .zero, size: size))
//        bgPath.close()
//        UIColor.white.setFill()
//        bgPath.fill()

        let path = BezierPathCalculateTools.testPath(endAngle: .pi / 3)
        UIColor.orange.setFill()
        path.fill()

        let path2 = BezierPathCalculateTools.testPath(startAngle: .pi / 3, endAngle: .pi * 2 / 3)
        path2.lineWidth = 1
        UIColor.red.setStroke()
        path2.stroke()

        let image = UIGraphicsGetImageFromCurrentImageContext()

        return image
    }

    static func testPath(
        center: CGPoint = CGPoint(x: 100, y: 100),
        radius: CGFloat = 80,
        height: CGFloat = 30,
        startAngle: CGFloat = .zero,
        endAngle: CGFloat = .pi / 6,
        rotationAngle: CGFloat = .pi / 2
    ) -> UIBezierPath {
        let path = UIBezierPath()

        var innerRadius = radius - height
        if innerRadius.isLessThanOrEqualTo(.zero) { innerRadius = .zero }

        let startAngle = startAngle - rotationAngle
        let endAngle = endAngle - rotationAngle

        let outerStartPoint = calculatePoint(wiht: center, radius: radius, angle: startAngle)
        //let outEndPoint = calculatePoint(wiht: center, radius: radius, angle: endAngle)
        let innerStartPoint = calculatePoint(wiht: center, radius: innerRadius, angle: startAngle)
        let innerEndPoint = calculatePoint(wiht: center, radius: innerRadius, angle: endAngle)

        path.move(to: innerStartPoint)
        path.addLine(to: outerStartPoint)

        path.addArc(withCenter: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        path.addLine(to: innerEndPoint)
        path.addArc(withCenter: center, radius: innerRadius, startAngle: endAngle, endAngle: startAngle, clockwise: false)

        path.close()

        return path
    }

}


// MARK: - 废弃的方法

extension BezierPathCalculateTools {

    /*
    static func calculatePoint(wiht centerPoint: CGPoint, radius: CGFloat, angle: CGFloat) -> CGPoint {
        guard !radius.isLessThanOrEqualTo(.zero) else { return centerPoint }
        var angle = angle
        // 去除不和规则的角度
        while angle < 0 { angle += .pi * 2 }
        while angle >= .pi * 2 { angle -= .pi * 2 }

        // 只计算第一象限(0 =< angle && angle <= .pi / 2)的坐标, 其他象限跟 centerPoint 做轴对称
        var symmetryX: CGFloat = 1
        var symmetryY: CGFloat = 1

        if angle >= .pi * 3 / 2 {
            angle = .pi * 2 - angle
            symmetryX = -1
        }

        if angle >= .pi {
            angle -= .pi
            symmetryX = -1
            symmetryY = -1
        }

        if angle >= .pi / 2 {
            angle = .pi - angle
            symmetryY = -1
        }

        guard angle != 0 else { return CGPoint(x: centerPoint.x, y: centerPoint.y - radius * symmetryY) }
        guard angle != .pi / 2 else { return CGPoint(x: centerPoint.x + radius * symmetryX, y: centerPoint.y) }

        let offsetX = radius * sin(angle) * symmetryX
        let offsetY = radius * cos(angle) * symmetryY

        let targetPoint = CGPoint(x: centerPoint.x + offsetX, y: centerPoint.y - offsetY)

        return targetPoint
    }
    */
}
