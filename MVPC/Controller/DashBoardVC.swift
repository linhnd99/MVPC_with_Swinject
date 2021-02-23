//
//  DashBoardVC.swift
//  MVPC
//
//  Created by linzsc on 23/02/2021.
//

import UIKit

class DashBoardVC: BaseVC<DashboardPresenter, DashboardView> {
    

    @IBOutlet weak var helloLabel: UILabel!
    
    var coordinator: DashboardCoordinator!
    var name: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        helloLabel.text = name
    }
    

}

extension DashBoardVC: DashboardView {
    
}
