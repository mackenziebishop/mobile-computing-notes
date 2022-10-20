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

