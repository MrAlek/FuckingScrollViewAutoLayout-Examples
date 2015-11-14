//
//  AppDelegate.swift
//  FuckingScrollViewAutoLayout
//
//  Created by Alek Åström on 2015-09-24.
//  Copyright © 2015 Apps and Wonders. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var tabBarController: UITabBarController! {
        return window?.rootViewController as? UITabBarController
    }
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
        let codeStackVC = StackCodeViewController()
        codeStackVC.title = "Code Stack View"
        tabBarController.viewControllers?.append(UINavigationController(rootViewController: codeStackVC))
        
        let pureAutoLayoutVC = PureCodeViewController()
        pureAutoLayoutVC.title = "Code Pure Autolayout"
        tabBarController.viewControllers?.append(UINavigationController(rootViewController: pureAutoLayoutVC))
        
        return true
    }
}
