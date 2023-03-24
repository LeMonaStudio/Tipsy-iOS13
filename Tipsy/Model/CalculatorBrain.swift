//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Musa Lawrence on 3/24/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation


struct CalculatorBrain {
    
    var tipPercentage: Int = 10
    var splitNumber = 2
    
    func calculateBillSplit(billAmount: Double) -> String {
        let tipAmount = (Double(tipPercentage) * billAmount) / 100.0
        let amountBySplit = (billAmount + tipAmount) / Double(splitNumber)
        return String(format: "%.2f", amountBySplit)
    }
    
    mutating func setTipPercentage(tipPercentage: String)  {
        if (tipPercentage == "20%") {
            self.tipPercentage = 20
        } else if (tipPercentage == "10%") {
            self.tipPercentage = 10
        } else {
            self.tipPercentage = 0
        }
    }
    
    mutating func setSplitNumber(splitNumber: Int) {
        self.splitNumber = splitNumber
    }
    
}
