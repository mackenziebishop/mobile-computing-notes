//
//  ViewController.swift
//  Bishop_SearchApp
//
//  Created by Bishop,Mackenzie N on 10/19/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var searchButtonAction: UIButton!
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var showPrevImagesBtn: UIButton!
    @IBOutlet weak var showNextImagesBtn: UIButton!
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    let image_array = [
    ["daisy", "lilly", "marigold", "rose", "sunflower", "These are some of my favorite flowers that can be found locally. This search yields 5 results."],
    
    ["dune", "great_gatsby", "little_women", "pride_and_prejudice", "wuthering_heights", "These are some of my favorite books that range from classical literature to modern science fiction. This search yields 5 results."],
    
    ["emma_watson", "meryl_streep", "morgan_freeman", "tom_hanks", "tom_holland", "These are some of the most well-known actors and actresses of all time, spanning across different generations of movie and TV history. This search yields 5 results."],
    ]
    //Flower keyword array
    let flower_keywords = ["flower", "color", "size", "petals"]
       
    //Book keyword array
    let book_keywords = ["book", "classic", "literature", "hardcover"]
       
    //Actor keyword array
    let actor_keywords = ["actor", "movie", "hero", "film"]
    
    var imageNum = 0;
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topicDetails(0)
        showPrevImagesBtn.isEnabled = false
        showNextImagesBtn.isEnabled = false
    }
    
    @IBAction func onSearchBtnClicked(_ sender: UIButton) {
        var topic = 0
        
        if flower_keywords.contains(searchTextField.text!){
            topic = 1
        }
        if book_keywords.contains(searchTextField.text!){
            topic = 2
        }
        if actor_keywords.contains(searchTextField.text!){
            topic = 3
        }
        
        switch (topic){
        case 1:
            showNextImagesBtn.isEnabled = true
            for image in image_array{
                resultImage.image = UIImage(named: image_array[0][1])
            }

        case 2:
            showNextImagesBtn.isEnabled = true
            
        case 3:
            showNextImagesBtn.isEnabled = true
            
        default:
            topicInfoText.text = "Keyword yields no results."
        }
    }
    
    @IBAction func onNextBtnClicked(_ sender: Any) {
        imageNum += 1;
        topicDetails(imageNum)
        showPrevImagesBtn.isEnabled = true;
        
        if (imageNum == image_array.count-1){
            showNextImagesBtn.isEnabled = false
        }
    }
    
    @IBAction func onPrevBtnClicked(_ sender: Any) {
        imageNum -= 1;
        topicDetails(imageNum)
        showNextImagesBtn.isEnabled = true;
        
        if (imageNum == 0){
            showPrevImagesBtn.isEnabled = false;
        }
    }
    
    func topicDetails(_ imageNum:Int){
        resultImage.image = UIImage(named: image_array[imageNum][0])
        topicInfoText.text = image_array[imageNum][5]
    }
}

