//
//  ViewController.swift
//  Prework, Xianglin Chen
//
//  Created by Xianglin Chen on 2/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tip1: UILabel!
    @IBOutlet weak var tip2: UILabel!
    @IBOutlet weak var tip3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field
        let bill = Double(billAmountTextField.text!) ?? 0
        
        
        // Get total tip by mutiplyng top*tippercentage
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill *
        tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        // update tip amount label
        tipAmountLabel.text = String(format:"$%.2f",tip)
        // Update Total Amount
        totalLabel.text = String(format:"$%.2f",total)      
        
    }
    
    
    
}

