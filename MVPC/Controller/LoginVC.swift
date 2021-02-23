//
//  LoginVC.swift
//  MVPC
//
//  Created by linzsc on 23/02/2021.
//

import UIKit

class LoginVC: BaseVC<LoginPresenter, LoginView> {
    
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func loginButtonDidTap(_ sender: Any) {
        let decodedName = self.presenter.decodeName(nameTextField.text ?? "")
        let coordinator = DashboardCoordinator(self.navigationController!)
        coordinator.name = decodedName
        coordinator.start()
    }
}

extension LoginVC: LoginView {
    
}
