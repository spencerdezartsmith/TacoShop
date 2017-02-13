//
//  MainViewController.swift
//  TacoShop
//
//  Created by spencerdezartsmith on 2/13/17.
//  Copyright © 2017 spencerdezartsmith. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var header: HeaderView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        header.addDropShadow()
    }
}
