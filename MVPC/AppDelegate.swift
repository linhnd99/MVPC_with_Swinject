//
//  AppDelegate.swift
//  MVPC
//
//  Created by linzsc on 22/02/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow.init(frame: UIScreen.main.bounds)
        
        let loginCoordinator = LoginCoordinator(window: window)
        loginCoordinator.start()
        
        return true
    }



}

