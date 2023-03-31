//
//  SecondScreenViewController.swift
//  MosolovHW6
//
//  Created by Александр Мосолов on 31.03.2023.
//

import UIKit

class SecondScreenViewController: UIViewController {

    @IBOutlet var welcomeMessageLabel: UILabel!
    @IBOutlet var logoutButton: UIButton!
    
    var loggedInUser: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoutButton.layer.cornerRadius = 10
        welcomeMessageLabel.text = "Welcome, \(loggedInUser ?? "")"
    }
    
    @IBAction func logoutButtonTapped() {
    }
    

}
