//
//  DoubleExtensions.swift
//  Calculator
//
//  Created by Diego.Caridei on 13/05/2019.
//  Copyright © 2019 Diego.Caridei. All rights reserved.
//

import Foundation
extension Double {
    //Helper method
   static func stringToDouble(stringVal: String?) -> Double {
        if let stringVal = stringVal, let doubleVal = Double(stringVal) {
            return doubleVal
        } else {
            return 0
        }
    }

}
