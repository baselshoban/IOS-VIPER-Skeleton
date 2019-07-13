//
//  AppDelegate.swift
//  VIPER architecture
//
//  Created by Basel Shoban on 7/13/19.
//  Copyright © 2019 Basel Shoban. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let Router = ObjectRouter()
        let viewController = Router.createModule() as? ViewController
        
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        
        return true
    }

}

