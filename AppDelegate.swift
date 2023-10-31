//
//  AppDelegate.swift
//  cards_manager
//
//  Created by 邵松 on 2023/10/31.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // 创建一个ViewController实例作为初始视图控制器
        let viewController = NFCReaderViewController()
        
        // 创建一个UIWindow实例，并将初始视图控制器设置为根视图控制器
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        
        return true
    }
}

