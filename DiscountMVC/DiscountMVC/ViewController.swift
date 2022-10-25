//
//  ViewController.swift
//  DiscountMVC
//
//  Created by Bishop,Mackenzie N on 10/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountField: UITextField!
    @IBOutlet weak var discountField: UITextField!
    
    var priceAfterDiscount:Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcButtonClicked(_ sender: Any) {
        //Don't forget to type cast your variables!
        var amount = Double(amountField.text!)
        var discount = Double(discountField.text!)
        
        //Discount price
        priceAfterDiscount = amount! - (amount!*discount!/100)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier //segue.identifier is resultSegue
        if transition == "resultSegue"{
            //Create destination
            var destination = segue.destination as! resultViewController
            
            //Populate destination with values from main
            destination.amount = amountField.text!
            destination.discount = discountField.text!
            //Typecast priceAfterDiscount because all destinations.() are of type String
            destination.result = String(priceAfterDiscount)
        }
    }
}

