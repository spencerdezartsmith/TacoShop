//
//  ReuseableView.swift
//  TacoShop
//
//  Created by spencerdezartsmith on 2/14/17.
//  Copyright © 2017 spencerdezartsmith. All rights reserved.
//

import UIKit

protocol ReuseableView: class {}

extension ReuseableView where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
