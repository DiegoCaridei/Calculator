//
//  ActionCalculator.swift
//  Calculator
//
//  Created by Diego.Caridei on 13/05/2019.
//  Copyright © 2019 Diego.Caridei. All rights reserved.
//

import ReSwift

enum ActionCalculator: Action {
    case addition(firstValue: String?, secondValue: String?)
    case subtraction(firstValue: String?, secondValue: String?)
    case multiplication(firstValue: String?, secondValue: String?)
    case division(firstValue: String?, secondValue: String?)
}
