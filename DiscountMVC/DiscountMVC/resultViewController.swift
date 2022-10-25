//
//  resultViewController.swift
//  DiscountMVC
//
//  Created by Bishop,Mackenzie N on 10/25/22.
//

import UIKit

class resultViewController: UIViewController {

    @IBOutlet weak var displayAmountOutlet: UILabel!
    
    @IBOutlet weak var discountRateOutlet: UILabel!
    
    @IBOutlet weak var displayResult: UILabel!
    
    //Create variables to hold values from main
    var amount  = ""
    var discount = ""
    var result = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayAmountOutlet.text = displayAmountOutlet.text! + amount
        discountRateOutlet.text = discountRateOutlet.text! + discount
        displayResult.text = displayResult.text! + result

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
