//
//  wage.swift
//  window-shopper
//
//  Created by tarek bahie on 12/1/18.
//  Copyright © 2018 tarek bahie. All rights reserved.
//

import Foundation
class Wage{
    class func getWage (forWage wage: Double, andPrice price : Double) -> Int {
        return Int(ceil(price / wage))
    }
}
