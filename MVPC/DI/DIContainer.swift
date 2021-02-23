//
//  DIContainer.swift
//  MVPC
//
//  Created by linzsc on 23/02/2021.
//

import UIKit
import Swinject

class DIContainer {
    static let shared = DIContainer()
    private var _container = Container()
    
    init() {
        register()
    }
    
    func register() {
        PresenterRegister.register(container: _container)
    }
    
    func resolve<Service>(_ serviceType: Service.Type) -> Service {
        return _container.resolve(serviceType)!
    }

    func resolve<Service, Arg1>(_ serviceType: Service.Type, argument: Arg1) -> Service {
        return _container.resolve(serviceType, argument: argument)!
    }
    
//    func resolve<Service>(_ serviceType: Service.Type) -> Service {
//        if Thread.isMainThread {
//            return self._container.resolve(serviceType)!
//        } else {
//            var service:Service?
//
//            DispatchQueue.main.sync {[weak self] in
//                service = self?._container.resolve(serviceType)
//            }
//
//            return service!
//        }
//    }
//
//    func resolve<Service, Arg1>(_ serviceType: Service.Type, agrument: Arg1) -> Service {
//        if Thread.isMainThread {
//            return self._container.resolve(serviceType, argument: agrument)!
//        } else {
//            var service:Service?
//
//            DispatchQueue.main.sync {[weak self] in
//                service = self?._container.resolve(serviceType, argument: agrument)
//            }
//
//            return service!
//        }
//    }
}
