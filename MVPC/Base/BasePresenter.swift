//
//  BasePresenter.swift
//  MVPC
//
//  Created by linzsc on 22/02/2021.
//

import UIKit

class BasePresenter<View> {
    var view: View
    
    internal init(view: View) {
        self.view = view
    }
    
}
