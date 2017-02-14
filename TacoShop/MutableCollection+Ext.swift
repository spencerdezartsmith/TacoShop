//
//  MutableCollection+Ext.swift
//  TacoShop
//
//  Created by spencerdezartsmith on 2/14/17.
//  Copyright © 2017 spencerdezartsmith. All rights reserved.
//

import Foundation

extension MutableCollection where Index == Int {
    
    mutating func shuffle() {
        if count < 2 { return }
        
        for i in startIndex..<endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(endIndex - 1)))
            
            guard i != j else { continue }
            swap(&self[i], &self[j])
        }
    }
}
