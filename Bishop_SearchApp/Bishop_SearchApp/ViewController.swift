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
            //Flower image array
            [UIImage(named: "daisy"), UIImage(named: "lilly"), UIImage(named: "marigold"), UIImage(named: "rose"), UIImage(named: "sunflower")],
            //Book image array
            [UIImage(named: "dune"), UIImage(named: "great_gatsby"), UIImage(named: "little_women"), UIImage(named: "pride_and_prejudice"), UIImage(named: "wuthering_heights")],
            //Actor image array
            [UIImage(named: "emma_watson"), UIImage(named: "meryl_streep"), UIImage(named: "morgan_freeman"), UIImage(named: "tom_hanks"), UIImage(named: "tom_holland")]
    ]
    //Flower keyword array
    let flower_keywords = ["flower", "color", "size", "petals"]
       
    //Book keyword array
    let book_keywords = ["book", "classic", "literature", "hardcover"]
       
    //Actor keyword array
    let actor_keywords = ["actor", "movie", "hero", "film"]
    
    //Topic array
        let topic_array = [["These are some of my favorite flowers that can be found locally. This search yields 5 results."],["These are some of my favorite books that range from classical literature to modern science fiction. This search yields 5 results."],["These are some of the most well-known actors and actresses of all time, spanning across different generations of movie and TV history. This search yields 5 results."]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onSearchBtnClicked(_ sender: Any) {
    }
    @IBAction func onNextBtnClicked(_ sender: Any) {
    }
    @IBAction func onPrevBtnClicked(_ sender: Any) {
    }
    

}

