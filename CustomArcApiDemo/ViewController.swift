//
//  ViewController.swift
//  CustomArcApiDemo
//
//  Created by DR_Kun on 2020/5/15.
//  Copyright © 2020 kun. All rights reserved.
//

import UIKit

fileprivate extension CGFloat {

    static func angleValue(_ value: CGFloat) -> CGFloat {
        return value * 2 * .pi
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        addAcrView()
        addTestDrawPathView()
        addTestImageView()

        let point = BezierPathCalculateTools.calculatePoint(wiht: CGPoint(x: 200, y: 100), radius: 100, angle: .pi / 3)
        print(point)

        // let image = BezierPathCalculateTools.testGetImage()
        // imageView?.image = image

        let ringInfos: [BezierPathCalculateTools.RingInfo] = [
            .init(fillColor: MaterialColor.green[.o700], angle: .angleValue(0.1954)),
            .init(fillColor: MaterialColor.green[.o400], angle: .angleValue(0.1032)),
            .init(fillColor: MaterialColor.green[.o200], angle: .angleValue(0.045)),
            .init(fillColor: MaterialColor.orange[.o700], angle: .angleValue(0.399)),
            .init(fillColor: MaterialColor.orange[.o200], angle: .angleValue(0.1398)),
            .init(fillColor: MaterialColor.red[.o700], angle: .angleValue(0.1176))
        ]

        let image = BezierPathCalculateTools.generateImage(
            from: ringInfos,
            targetSize: CGSize(width: 200, height: 200),
            drawCenter: CGPoint(x: 100, y: 100),
            radius: 80,
            ringHeihgt: 30,
            splitLineInfo: .default,
            backgroudColor: nil
        )

        imageView.image = image
        
    }

// MARK: - UI element

    private var imageView: UIImageView!
}

private extension ViewController {

    func addAcrView() {
        let arc = DarwArcView.init(frame: CGRect(x: 16, y: 50, width: 300, height: 300))
        arc.backgroundColor = UIColor.lightGray
        view.addSubview(arc)
    }

    func addTestDrawPathView() {
        let pathView = DrawTestPath(frame: CGRect(x: 16, y: 360, width: 300, height: 200))
        pathView.backgroundColor = .lightGray
        view.addSubview(pathView)
    }

    func addTestImageView() {
        if let _ = imageView {
            return
        }

        imageView = UIImageView(frame: CGRect(x: 16, y: 580, width: 200, height: 200))
        //imageView.backgroundColor = .lightGray
        view.addSubview(imageView)
    }
}
