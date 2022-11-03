//
//  ViewController.swift
//  TableView
//
//  Created by Bishop,Mackenzie N on 11/2/22.
//

import UIKit

class Product{
    var productName:String?
    var productCategory:String?
    
    init(prodName:String, prodCategory:String){
        self.productName = prodName
        self.productCategory = prodCategory
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableViewOutlet.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = productArray[indexPath.row].productName
        return cell
    }
    
    
    @IBOutlet weak var TableViewOutlet: UITableView!
    
    var productArray = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Assign number of rows
        TableViewOutlet.delegate = self
        //Assign data source
        TableViewOutlet.dataSource = self
        
        let p1 = Product(prodName: "MacBook Air", prodCategory: "Laptop")
        productArray.append(p1)
        
        let p2 = Product(prodName: "iPhone", prodCategory: "Phone")
        productArray.append(p2)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "AppleProductDescription"{
            let destination = segue.destination as! ResultViewController
            
            destination.product = productArray[(TableViewOutlet.indexPathForSelectedRow?.row)!]
        }
    }


}

