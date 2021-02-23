//
//  LoginCoordinator.swift
//  MVPC
//
//  Created by linzsc on 23/02/2021.
//

import UIKit

class LoginCoordinator: BaseCoordinator {
    var isStarted: Bool = false
    var window: UIWindow!
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        if !isStarted {
            isStarted = true
            let nav = UINavigationController.init(rootViewController: LoginVC.factory())
            self.window.rootViewController = nav
            self.window.makeKeyAndVisible()
        }
    }
    
    func stop() {
        // isStarted = false
    }
    

}
