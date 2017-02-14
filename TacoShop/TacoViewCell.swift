//
//  TacoViewCell.swift
//  TacoShop
//
//  Created by spencerdezartsmith on 2/13/17.
//  Copyright © 2017 spencerdezartsmith. All rights reserved.
//

import UIKit

class TacoViewCell: UICollectionViewCell, NibLoadableView {

    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLabel: UILabel!
    
    var taco: Taco!
    
    func configueCell(taco: Taco) {
        self.taco = taco
        tacoImage.image = UIImage(named: taco.proteinID.rawValue)
        tacoLabel.text = taco.productName
    }
}
