//
//  AppDelegate.swift
//  CustomArcApiDemo
//
//  Created by DR_Kun on 2020/5/15.
//  Copyright © 2020 kun. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow.init(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        
        window?.backgroundColor = .white
        
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController")
        
        window?.rootViewController = vc
        
        window?.makeKeyAndVisible()
        
        
        
        return true
    }

}

