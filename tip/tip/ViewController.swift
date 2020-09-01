//
//  ViewController.swift
//  tip
//
//  Created by christopher cruz on 8/27/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    
    override func viewDidLoad() {
       
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
        
    }
    @IBAction func calculateTip(_ sender: Any) {
        //get initial bill amount and calculate tips
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
       
        // Calculate tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        }
    }
    


