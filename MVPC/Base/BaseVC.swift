//
//  BaseVC.swift
//  MVPC
//
//  Created by linzsc on 22/02/2021.
//

import UIKit

class BaseVC<Presenter,View>: UIViewController, BaseView {
    var presenter: Presenter!
    
    
    static func factory() -> Self {
        let vc = Self()
        vc.injectPresenter()
        return vc
    }
    
    func injectPresenter() {
        self.presenter = DIContainer.shared.resolve(Presenter.self, argument: self as! View)
    }
}
