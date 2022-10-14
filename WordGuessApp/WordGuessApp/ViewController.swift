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
        //Check button should be disabled before guess
        checkButton.isEnabled = false;
        
        //Get the first word from the array
        word = words[count][0]
        displayLabel.text = ""
        
        //Populate guessEntered with underscores. # of underscores is equal to the # of characters in the guess
        
        
        //Get first hint associated with the word being guessed in the array
        hintLabel.text = "Hint: " + words[count][1]

        //Clear status label initially
        guessStatus.text = ""
    }
    
    @IBAction func checkButtonClicked(_ sender: Any){
        //Get text from text field
        //Replace the guessed letter if the letter is part of the word
        //Assigning the word to guessStatus after a guess
        //If the word is guessed correctly, enable play again button and disabling the check button
    }
    
    @IBAction func playAgainButtonClicked(_ sender: UIButton){
        //Reset button to disable initially
        //Clear the label
        //If count reaches end of array, print "Congratulations" in hintLabel (if-else statement)
        //If...
            //Clear labels
        //Else...
            //Fetch next word from array
            //Fetch hint correlated to word
            //Enabling the check button
    }


}

