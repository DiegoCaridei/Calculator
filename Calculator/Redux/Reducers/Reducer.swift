//
//  Reducer.swift
//  Calculator
//
//  Created by Diego.Caridei on 13/05/2019.
//  Copyright © 2019 Diego.Caridei. All rights reserved.
//

import ReSwift

func calculatorReducer(action: Action, state: AppState?) -> AppState {
    var state = state ?? AppState()
    switch action {
    case ActionCalculator.addition(let first, let second):
        state.result = Double.stringToDouble(stringVal: first) + Double.stringToDouble(stringVal: second)
    case ActionCalculator.multiplication(let first, let second):
        state.result = Double.stringToDouble(stringVal: first) * Double.stringToDouble(stringVal: second)
    case ActionCalculator.subtraction(let first, let second):
       state.result =  Double.stringToDouble(stringVal: first) - Double.stringToDouble(stringVal: second)
    case ActionCalculator.division(let first, let second):
       state.result =  Double.stringToDouble(stringVal: first) / Double.stringToDouble(stringVal: second)
    default:
        break
    }
    return state
}

