//
//  ViewController.swift
//  DiscountApp
//
//  Created by Bishop,Mackenzie N on 9/13/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountLabel: UITextField!
    
    @IBOutlet weak var discountLabel: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcDiscountOnClick(_ sender: UIButton) {
        //Read te data and convert to Double type
        var enteredAmount = Double(amountLabel.text!)
        
        var enteredDiscountRate = Double(discountLabel.text!)
        
        var priceAfterDiscount = enteredAmount!-(enteredAmount!*enteredDiscountRate!/100)
        
        resultLabel.text = "Price after discount: $\(priceAfterDiscount)"
    }
    
}

