//
//  ViewController.swift
//  charExclusiveApp
//
//  Created by Bishop,Mackenzie N on 9/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var characterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickSubmit(_ sender: Any) {
        var name = nameTextField.text!
        var label = characterLabel.text = " First 4 letters of your name:  \(name.prefix(4))"
        //Add if-else for names less than 4 characters in length??
        //if (name.count >= 4){
        // var fourChar = name[name.startIndex ..< name.index(name.startIndex, offsetBy:4)
        
    }
    
}

