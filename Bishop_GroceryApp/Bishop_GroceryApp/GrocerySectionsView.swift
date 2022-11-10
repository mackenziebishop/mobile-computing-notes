//
//  ViewController.swift
//  Bishop_GroceryApp
//
//  Created by Bishop,Mackenzie N on 11/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var grocerySectionsTableView: UITableView!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let transition = segue.identifier
        if transition == "itemsSegue"{
            let destination = segue.destination as! GroceryItemsViewController
        }
    }
}
