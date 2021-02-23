//
//  DashboardCoordinator.swift
//  MVPC
//
//  Created by linzsc on 23/02/2021.
//

import UIKit

class DashboardCoordinator: BaseCoordinator {
    
    var isStarted: Bool = false
    private var navigator: UINavigationController!
    var name: String!
    
    init(_ navigator: UINavigationController) {
        self.navigator = navigator
    }
    
    func start() {
        if !isStarted {
            isStarted = true
            let controller = DashBoardVC.factory()
            controller.coordinator = self
            controller.name = self.name
            self.navigator.pushViewController(controller, animated: true)
        }
    }
    
    func stop() {
        if isStarted {
            isStarted = false
            self.navigator.popViewController(animated: true)
        }
    }
}
