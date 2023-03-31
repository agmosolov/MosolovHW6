//
//  ViewController.swift
//  MosolovHW6
//
//  Created by Александр Мосолов on 31.03.2023.
//

import UIKit

class FirstScreenViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var loginButton: UIButton!
    
    let userAndPassword = ["User1" : 123]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 10
        
    }

    @IBAction func loginButtonTapped() {
    }
    
    @IBAction func forgotUserButtonTapped() {
    
        let userAlert = UIAlertController(
            title: "Don't worry!",
            message: "Your user name is User1",
            preferredStyle: .alert
        )
        
        let userAlertAction = UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        )
        
        userAlert.addAction(userAlertAction)
        
        self.present(userAlert, animated: true, completion: nil)
    }
   
 
    @IBAction func forgotPasswordButtonTapped() {
        
        let userAlert = UIAlertController(
            title: "Don't worry!",
            message: "Your password is 123",
            preferredStyle: .alert
        )
        
        let userAlertAction = UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        )
        
        userAlert.addAction(userAlertAction)
        
        self.present(userAlert, animated: true, completion: nil)
    }
        
}
    

