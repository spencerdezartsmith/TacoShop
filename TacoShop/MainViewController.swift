//
//  MainViewController.swift
//  TacoShop
//
//  Created by spencerdezartsmith on 2/13/17.
//  Copyright © 2017 spencerdezartsmith. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, DataServiceDelegate {
    
    @IBOutlet weak var header: HeaderView!
    @IBOutlet weak var collection: UICollectionView!
    
    var dataService = DataService.instance

    override func viewDidLoad() {
        super.viewDidLoad()
    
        header.addDropShadow()
    }
    
    func deliciousTacoDataLoaded() {
        print("Taco data is loaded!")
    }

}
