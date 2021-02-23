//
//  Coordinator.swift
//  MVPC
//
//  Created by linzsc on 22/02/2021.
//

import UIKit

protocol BaseCoordinator {
    var isStarted: Bool {get}
    
    func start()
    func stop()
}
