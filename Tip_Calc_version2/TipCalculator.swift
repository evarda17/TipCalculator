//
//  TipCalculator.swift
//  Tip_Calc_version2
//
//  Created by Eliza Vardanyan on 9/4/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import Foundation

class TipCalculator{
    var amtBeforeTax: Double = 0
    var tipAmt: Double = 0
    var tipPercent: Double = 0
    var totalAmt: Double  = 0
    
    init(amtBeforeTax: Double, tipPercent: Double){
        self.amtBeforeTax = amtBeforeTax
        self.tipPercent = tipPercent
    }
    
    func calculateTip(){
        tipAmt = amtBeforeTax * tipPercent
        totalAmt =  amtBeforeTax + tipAmt
    }
}


