//
//  Taco.swift
//  TacoShop
//
//  Created by spencerdezartsmith on 2/13/17.
//  Copyright © 2017 spencerdezartsmith. All rights reserved.
//

import Foundation

enum TacoShell: Int {
    case Flour = 1
    case Corn = 2
}

enum TacoProtein: String {
    case Beef = "Beef"
    case Chicken = "Chicken"
    case Brisket = "Brisket"
    case Fish = "Fish"
}

enum TacoCondiment: Int {
    case Loaded = 1
    case Plain = 2
}

struct Taco {
    private var _id: Int!
    private var _productName: String!
    private var _shellID: TacoShell!
    private var _proteinID: TacoProtein!
    private var _tacoCondiment: TacoCondiment!
    
    var id: Int {
        return _id
    }
    
    var productName: String {
        return _productName
    }
    
    var shellID: TacoShell {
        return _shellID
    }
    
    var proteinID: TacoProtein {
        return _proteinID
    }
    
    var tacoCondiment: TacoCondiment {
        return _tacoCondiment
    }
    
    init(id: Int, productName: String, shellID: Int, proteinID: Int, tacoCondiment: Int) {
        self._id = id
        self._productName = productName
        
        switch shellID {
        case 2:
            self._shellID = TacoShell.Corn
        default:
            self._shellID = TacoShell.Flour
        }
        
        switch proteinID {
        case 2:
            self._proteinID = TacoProtein.Chicken
        case 3:
            self._proteinID = TacoProtein.Brisket
        case 4:
            self._proteinID = TacoProtein.Fish
        default:
            self._proteinID = TacoProtein.Beef
        }
        
        switch tacoCondiment {
        case 1:
            self._tacoCondiment = TacoCondiment.Loaded
        default:
            self._tacoCondiment = TacoCondiment.Plain
        }
    }
}









