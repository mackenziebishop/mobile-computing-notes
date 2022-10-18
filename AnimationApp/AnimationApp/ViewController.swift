//
//  ViewController.swift
//  AnimationApp
//
//  Created by Bishop,Mackenzie N on 10/18/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var happyOutlet: UIButton!
    @IBOutlet weak var sadOutlet: UIButton!
    @IBOutlet weak var angryOutlet: UIButton!
    @IBOutlet weak var shakeOutlet: UIButton!
    @IBOutlet weak var showMeOutlet: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //viewDidAppear allows animation display
    override func viewDidAppear(_ animated: Bool) {
        //Move imageView outside of screen view
        imageOutlet.frame.origin.x = view.frame.maxX
            //.origin means "top left corner" and .view means "screen"
        
        //Move other remaining components outside of the screen
        happyOutlet.frame.origin.x = view.frame.width
        sadOutlet.frame.origin.x = view.frame.width
        angryOutlet.frame.origin.x = view.frame.width
        shakeOutlet.frame.origin.x = view.frame.width
    }
    
    @IBAction func happyButtonClicked(_ sender: Any) {
    }
    @IBAction func sadButtonClicked(_ sender: Any) {
    }
    @IBAction func angryButtonClicked(_ sender: Any) {
    }
    @IBAction func shakeButtonClicked(_ sender: Any) {
    }
    @IBAction func showButtonClicked(_ sender: Any) {
        UIView.animate(withDuration: 1, animations: {
            //Allows to trigger animation
            self.imageOutlet.center.x = self.view.center.x
            self.happyOutlet.center.x = self.view.center.x
            self.sadOutlet.center.x = self.view.center.x
            self.angryOutlet.center.x = self.view.center.x
            self.shakeOutlet.center.x = self.view.center.x
        })
        //Bring all components to the center
        imageOutlet.center.x = view.center.x
        happyOutlet.center.x = view.center.x
        sadOutlet.center.x = view.center.x
        angryOutlet.center.x = view.center.x
        shakeOutlet.center.x = view.center.x
        
        //Disable show button
        showMeOutlet.isEnabled = false
    }
    


}

