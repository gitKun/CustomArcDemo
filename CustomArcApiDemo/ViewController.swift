//
//  ViewController.swift
//  CustomArcApiDemo
//
//  Created by DR_Kun on 2020/5/15.
//  Copyright © 2020 kun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("xx")
        addAcrView()
        
    }

    func addAcrView() {
        let arc = DarwArcView.init(frame: CGRect(x: 16, y: 100, width: 300, height: 300))
        arc.backgroundColor = UIColor.lightGray
        view.addSubview(arc)
    }
    
    
    
}

