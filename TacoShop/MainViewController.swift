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
        
        collection.delegate = self
        collection.dataSource = self
        
        dataService.delegate = self
        dataService.parseTacoDataCSV()
        
        header.addDropShadow()
    }
    
    func deliciousTacoDataLoaded() {
        print("Taco data is loaded!")
    }
}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataService.tacoArray.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoViewCell", for: indexPath) as? TacoViewCell {
            
            let taco: Taco!
            
            taco = dataService.tacoArray[indexPath.row]
            
            cell.configueCell(taco: taco)
            
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 95)
    }
}
