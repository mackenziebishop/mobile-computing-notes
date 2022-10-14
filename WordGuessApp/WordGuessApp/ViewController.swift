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
        updateUnderscores();
        
        //Get first hint associated with the word being guessed in the array
        hintLabel.text = "Hint: " + words[count][1]

        //Clear status label initially
        guessStatus.text = ""
    }
    
    @IBAction func checkButtonClicked(_ sender: Any){
        //Get text from text field
        var letter = guessEntered.text!
        
        //Replace the guessed letter if the letter is part of the word
        lettersGuessed = lettersGuessed + letter
        var revealedWord = ""
        for l in word{
            if lettersGuessed.contains(l){
                revealedWord += "\(l)"
            }
            else {
                revealedWord += "_ "
            }
        }
        
        //Assigning the word to guessStatus after a guess
        displayLabel.text = revealedWord
        guessEntered.text = ""
        
        //If the word is guessed correctly, enable play again button and disabling the check button
        if displayLabel.text!.contains("_") == false {
            playAgainButton.isHidden = false;
            checkButton.isEnabled = false;
        }
        checkButton.isEnabled = false
    }
    
    @IBAction func playAgainButtonClicked(_ sender: UIButton){
        //Reset button to disable initially
        playAgainButton.isHidden = true
        
        //Clear the label
        lettersGuessed = ""
        count += 1
        
        //if count reaches end of array, print "Congratulations" in hintLabel (if-else statement)
        if count == words.count{
            guessStatus.text = "Congratulations! You have completed the game!"
            
            //Clear labels
            displayLabel.text = ""
            hintLabel.text = ""
        }
        else {
            //fetch next word from array
            word = words[count][0]
            
            //fetch hint associated to word
            hintLabel.text = "Hint: "
            hintLabel.text! += words[count][1]
            
            //Enable check button
            checkButton.isEnabled = true
            
            displayLabel.text = ""
            updateUnderscores()
        }
    }
    @IBAction func enterLabelChanged(_ sender: UITextField) {
        //read the data from the text field
        var textEntered = guessEntered.text!;
        
        //Consider only the last character by calling textEntered.last and trimming the white spaces
        textEntered = String(textEntered.last ?? " ").trimmingCharacters(in: .whitespaces)
        guessEntered.text = textEntered
        
        //Check whether the entered text is empty or not to enable check button
        if textEntered.isEmpty{
            checkButton.isEnabled = false
        }
        else {
            checkButton.isEnabled = true
        }
    }
    func updateUnderscores(){
        for letter in word {
            displayLabel.text! += "_ "
        }
    }


}

