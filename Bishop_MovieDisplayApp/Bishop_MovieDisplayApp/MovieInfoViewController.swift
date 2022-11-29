//
//  MovieInfoViewController.swift
//  Bishop_MovieDisplayApp
//
//  Created by Bishop,Mackenzie N on 11/29/22.
//

import UIKit

class MovieInfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var movieImage: UIImageView!
    
    @IBOutlet weak var movieName: UILabel!
    
    @IBOutlet weak var movieCast: UILabel!
    
    @IBOutlet weak var movieReleaseYear: UILabel!
    
    @IBOutlet weak var movieCollection: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
