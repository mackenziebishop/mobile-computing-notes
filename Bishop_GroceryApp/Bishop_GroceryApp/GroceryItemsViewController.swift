//
//  GroceryItemsViewController.swift
//  Bishop_GroceryApp
//
//  Created by Bishop,Mackenzie N on 11/10/22.
//

import UIKit

class GroceryItemsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var groceryItemsTableView: UITableView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "itemInfoSegue"{
            let destination = segue.destination as! ItemInfoViewController
        }
    }
}
