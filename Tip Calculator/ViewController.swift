//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Kyle Gavin on 5/27/22.
//

import UIKit

class ViewController: UIViewController {

    // Object Variables for Storyboard
    
    
    
    @IBOutlet weak var displayText: UITextField!

    @IBOutlet weak var varTip: UILabel!
    
    @IBOutlet weak var tipPercent: UISegmentedControl!
    
    @IBOutlet weak var varTotal: UILabel!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcTip(_ sender: Any) {
        
        let bill = Double(displayText.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipPercent.selectedSegmentIndex]
        
        let total = bill + tip
        
        varTip.text = String(format: "$%.2f", tip)
        
        varTotal.text = String(format: "$%.2f", total)
    }
    
    
}

