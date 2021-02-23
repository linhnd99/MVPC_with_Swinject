//
//  LoginPresenter.swift
//  MVPC
//
//  Created by linzsc on 22/02/2021.
//

import UIKit

protocol LoginPresenter {
    func decodeName(_ name: String) -> String
}

class LoginPresenterImpl: BasePresenter<LoginView>, LoginPresenter {
    func decodeName(_ name: String) -> String {
        return String.init(name.hashValue)
    }
}
