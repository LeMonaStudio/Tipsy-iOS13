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
    
    var currentBillAmount = 0
    var currentTipPercantage = 10
    var currentSplitNumber = 2
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func billAmountEntered(_ sender: UITextField) {
        print("bill amount entered!")
    }
    
    @IBAction func tipPercentageSelected(_ sender: UIButton) {
        print("tip percentage selected!")
    }
    
    
    @IBAction func splitNumberChanged(_ sender: UIStepper) {
        print("New step value: \(sender.value)")
    }
    
    @IBAction func calculateBillSplit(_ sender: UIButton) {
        print("calcluate bill pressed!")
    }
}

