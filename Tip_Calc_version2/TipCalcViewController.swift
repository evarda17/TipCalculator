//
//  TipCalcViewController.swift
//  Tip_Calc_version2
//
//  Created by Eliza Vardanyan on 9/4/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import Foundation
import UIKit

class TipCalcViewController: UIViewController{
    
    @IBOutlet weak var TotalTextFieldLabel: UIView!
    @IBOutlet weak var eachPayLabel: UIView!
    @IBOutlet weak var roundBillField: UITextField!
    @IBOutlet weak var amtBeforeTax:
    UITextField!
    @IBOutlet weak var TipPercentLabel:
     UILabel!
    @IBOutlet weak var TipPercentSlider:
    UISlider!
    @IBOutlet weak var NumOfSplitSlider:
    UISlider!
    @IBOutlet weak var NumOfSplitLabel:
    UILabel!
    @IBOutlet weak var amtEachPersonLabel:
    UILabel!
    @IBOutlet weak var totalResultLabel:  UILabel!
    
    var tipCalculator = TipCalculator(amtBeforeTax: 0, tipPercent: 0.10)
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        amtBeforeTax.becomeFirstResponder()
        
        self.eachPayLabel.layer.cornerRadius = 12
        self.TotalTextFieldLabel.layer.cornerRadius = 12

        
    
    }
    
    
    
    func calculateBill(){
//        let bill  = Double(amtBeforeTax.text!) ?? 0
//        let tip = bill * 0.1
//        let total = bill + tip
        
//        totalResultLabel.text = "$\(total)"
        
        tipCalculator.tipPercent = Double(TipPercentSlider.value)/100.0
        tipCalculator.amtBeforeTax = (amtBeforeTax.text! as NSString).doubleValue
        tipCalculator.calculateTip()
        updateUI()
}
      
    func updateUI(){
        totalResultLabel.text = String(format: "$%0.2f", tipCalculator.totalAmt)
        
        let numOfPeople: Int = Int(NumOfSplitSlider.value)
        
        amtEachPersonLabel.text = String(format: "$%0.2f", tipCalculator.totalAmt / Double(numOfPeople))
      }
    
    
    @IBAction func TipPercentSliderValueChanged(sender: Any){
        TipPercentLabel.text = String(format:"Tip: %02d%%", Int(TipPercentSlider.value))
        calculateBill()
        }
    @IBAction func NumOfSplitSliderValueChanged(sender: Any){
        NumOfSplitLabel.text = "Split: \(Int(NumOfSplitSlider.value))"
        calculateBill()
    }
    
    @IBAction func amtBeforeTaxChanged(_ sender: Any) {
        calculateBill()

    }
    
}
