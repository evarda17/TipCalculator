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
    @IBOutlet weak var amtEachPerson:
    UILabel!
    @IBOutlet weak var totalResultLabel:  UILabel!
    
    var tipCalculator = TipCalculator(amtBeforeTax: 0, tipPercent: 0.10)
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        amtBeforeTax.becomeFirstResponder()
    }
    
    
    func calculateTip(){
          
      }
      
    func updateUI(){
          
      }
    
    
    @IBAction func TipPercentSliderValueChanged(sender: Any){
        TipPercentLabel.text = String(format:"Tip: %02d%%", Int(TipPercentSlider.value))
        calculateTip()
        }
    @IBAction func NumOfSplitSliderValueChanged(sender: Any){
        NumOfSplitLabel.text =  String(format:"Split: %02d%%", Int(NumOfSplitSlider.value))
    }
    
    @IBAction func amtBeforetaxChanged(sender: Any){
        calculateTip()
    }
    
}
