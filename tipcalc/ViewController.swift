//
//  ViewController.swift
//  tipcalc
//
//  Created by Abdi on 8/30/14.
//  Copyright (c) 2014 AbdurR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var amountField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var onePersonLabel: UILabel!
    @IBOutlet weak var twoPersonsLabel: UILabel!
    @IBOutlet weak var threePersonsLabel: UILabel!
    @IBOutlet weak var fourPersonsLabel: UILabel!
    @IBOutlet weak var tipPercentages: UISegmentedControl!
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var bottomView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        tipLabel.text = "0.00"
        onePersonLabel.text = "$0.00"
        twoPersonsLabel.text = "$0.00"
        threePersonsLabel.text = "$0.00"
        fourPersonsLabel.text = "$0.00"
    
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true);
    }

    @IBAction func onEditAmount(sender: AnyObject) {
        
        bottomView.hidden = false
        
        var tipStatic = [0.18, 0.2, 0.22]
        var tipPercentage = tipStatic[tipPercentages.selectedSegmentIndex]
        
        var billAmount = Double((amountField.text as NSString).doubleValue)
        
        var tip: Double
        tip = billAmount * tipPercentage
        
        var total:Double
        total = billAmount + tip
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        
        var onePersonAmount = total
        onePersonLabel.text = String(format: "$%.2f", onePersonAmount)
        
        var twoPersonsAmount = total / 2
        twoPersonsLabel.text = String(format: "$%.2f", twoPersonsAmount)
        
        var threePersonsAmount = total / 3
        threePersonsLabel.text = String(format: "$%.2f", threePersonsAmount)
        
        var fourPersonsAmount = total / 4
        fourPersonsLabel.text = String(format: "$%.2f", fourPersonsAmount)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

