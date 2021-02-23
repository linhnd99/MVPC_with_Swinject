//
//  PresenterRegister.swift
//  MVPC
//
//  Created by linzsc on 23/02/2021.
//

import UIKit
import Swinject

class PresenterRegister {
    static func register(container: Container) {
        registerForLoginPresenter(container)
        registerForDashboardPresenter(container)
    }
    
    static func registerForLoginPresenter(_ container: Container) {
        container.register(LoginPresenter.self) { (resolver, view) -> LoginPresenter in
            return LoginPresenterImpl(view: view)
        }
    }
    
    static func registerForDashboardPresenter(_ container: Container) {
        container.register(DashboardPresenter.self) { (resolver, view) -> DashboardPresenter in
            return DashboardPresenterImpl(view: view)
        }
    }
}
