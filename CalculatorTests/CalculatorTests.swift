//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by Diego.Caridei on 13/05/2019.
//  Copyright © 2019 Diego.Caridei. All rights reserved.
//

import XCTest
@testable import Calculator
class CalculatorTests: XCTestCase {

    func test_subtraction() {
        let newState =  calculatorReducer(action: ActionCalculator.subtraction(firstValue: "3", secondValue: "2"), state: nil)
        XCTAssertEqual(newState.result, 1)
    }
    
    func test_multiplication() {
        let newState =  calculatorReducer(action: ActionCalculator.multiplication(firstValue: "2", secondValue: "3"), state: nil)
        XCTAssertEqual(newState.result, 6)
    }
    func test_division() {
        let newState =  calculatorReducer(action: ActionCalculator.division(firstValue: "6", secondValue: "2"), state: nil)
        XCTAssertEqual(newState.result, 3)
    }

    func test_addition() {
        let newState =  calculatorReducer(action: ActionCalculator.addition(firstValue: "2", secondValue: "3"), state: nil)
        XCTAssertEqual(newState.result, 5)
    }

}
