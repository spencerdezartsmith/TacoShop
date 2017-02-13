//
//  DataService.swift
//  TacoShop
//
//  Created by spencerdezartsmith on 2/13/17.
//  Copyright © 2017 spencerdezartsmith. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    var tacoArray: Array<Taco> = []
    
    func parseTacoDataCSV() {
        let path = Bundle.main.path(forResource: "TacoPOPData", ofType: "csv")
        
        do {
            
            let csv = try CSV(contentsOfURL: path!)
            let rows = csv.rows
            
            for row in rows {
                let newTaco = Taco(id: Int(row["id"]!)!, productName: row["productName"]!, shellID: Int(row["shellId"]!)!, proteinID: Int(row["proteinId"]!)!, tacoCondiment: Int(row["condimentsId"]!)!)
                
                tacoArray.append(newTaco)
            }
            
        } catch let error as NSError {
            
            print(error.debugDescription)
        }
    }
}
