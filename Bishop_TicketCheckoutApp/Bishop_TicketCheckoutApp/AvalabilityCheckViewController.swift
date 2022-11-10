//
//  ViewController.swift
//  Bishop_TicketCheckoutApp
//
//  Created by Bishop,Mackenzie N on 11/3/22.
//

import UIKit

class AvalabilityCheckViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var bookingID: UITextField!
    
    @IBOutlet weak var checkButton: UIButton!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var ticketImage: UIImageView!
    
    @IBOutlet weak var checkoutButton: UIButton!
    
    //Variables
    var ticketFound = Ticket()
    var userBookingID = false
    var ticketsArray = TicketsArray
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ticketImage.image = UIImage(named: "default")
        
        checkoutButton.isEnabled = false
        
        statusLabel.text = ""
    }

    @IBAction func checkButtonOnClick(_ sender: Any) {
        let enteredBookingID = bookingID.text!
        for ticket in ticketsArray {
            if enteredBookingID == ticket.bookingID{
                ticketFound = ticket
                userBookingID = true
                statusLabel.text! = "\(bookingID!) is found."
            }
        }
    }
    @IBAction func checkoutButtonOnClick(_ sender: Any) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "checkButtonOnClick"{
            let destination = segue.destination as! CheckoutTicketViewController
            
        }
    }
    
}

