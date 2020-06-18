//
//  MainMenuViewController.swift
//  XO-game
//
//  Created by Denis Vlaskin on 18.06.2020.
//  Copyright © 2020 plasmon. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController {

    @IBAction func doublePlayerGame(_ sender: Any) {
        Game.shared.isComputerGaming = false
    }
    
    @IBAction func computerPlayerGame(_ sender: Any) {
        Game.shared.isComputerGaming = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
