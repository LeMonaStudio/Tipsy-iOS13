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
    var amount: String?
    
    mutating func calculateBillSplit(billAmount: Double) {
        let tipAmount = (Double(tipPercentage) * billAmount) / 100.0
        let amountBySplit = (billAmount + tipAmount) / Double(splitNumber)
        
        amount = String(format: "%.2f", amountBySplit)
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
    
    func getAmount() -> String? {
        return amount
    }
    
    func getSplitDescription() -> String {
        return "Split between \(splitNumber) people, with \(tipPercentage)% tip."
    }
}
