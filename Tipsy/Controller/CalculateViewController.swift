//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var billAmountText: UITextField!
    @IBOutlet weak var zeroPercenButton: UIButton!
    @IBOutlet weak var tenPercentButton: UIButton!
    @IBOutlet weak var twentyPercentButton: UIButton!
    
    
    var calculatorBrain = CalculatorBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func tipPercentageSelected(_ sender: UIButton) {
        calculatorBrain.setTipPercentage(tipPercentage: sender.currentTitle!)
        deselectTipButtons()
        sender.isSelected = true
    }
    
    
    @IBAction func splitNumberChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        calculatorBrain.setSplitNumber(splitNumber:Int(sender.value))
    }
    
    @IBAction func calculateBillSplit(_ sender: UIButton) {
        let billAmountText = billAmountText.text ?? ""
        let billAmount = Double(billAmountText) ?? 0.0
        
        calculatorBrain.calculateBillSplit(billAmount: billAmount)
        
        performSegue(withIdentifier: "goToResultScreen", sender: self)
    }
    
    func deselectTipButtons() {
        zeroPercenButton.isSelected = false
        tenPercentButton.isSelected = false
        twentyPercentButton.isSelected = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToResultScreen"){
            let destination = segue.destination as? ResultViewController
            
            destination?.calculatorBrain = self.calculatorBrain
        }
    }
}

