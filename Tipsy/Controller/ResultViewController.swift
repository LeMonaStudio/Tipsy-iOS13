//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Musa Lawrence on 3/24/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var billSplitAmountLabel: UILabel!
    
    @IBOutlet weak var splitDescriptionLabel: UILabel!
    
    var calculatorBrain: CalculatorBrain?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        billSplitAmountLabel.text = calculatorBrain?.getAmount()
        splitDescriptionLabel.text = calculatorBrain?.getSplitDescription()
    }
    
    @IBAction func recalculateButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
