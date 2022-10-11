//
//  ViewController.swift
//  WordGuessApp
//
//  Created by Bishop,Mackenzie N on 10/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var guessEntered: UITextField!
    
    @IBOutlet weak var guessStatus: UILabel!
    
    @IBOutlet weak var checkButton: UIButton!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    var words = [["SWIFT", "Programming Language"], ["DOG", "Animal"], ["MOTORCYCLE", "Two wheeler"], ["MACBOOK", "Apple device"]]
    
    var count = 0;
    var word = ""
    var lettersGuessed = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

