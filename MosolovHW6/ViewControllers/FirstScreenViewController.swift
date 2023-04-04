//
//  ViewController.swift
//  MosolovHW6
//
//  Created by Александр Мосолов on 31.03.2023.
//

import UIKit

final class FirstScreenViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var loginButton: UIButton!
    
    let userAndPasswords = [
        "User1" : "Pas1",
        "User2" : "Pas2",
        "User3" : "Pas3"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 10
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondScreenVC = segue.destination as? SecondScreenViewController else { return }
        secondScreenVC.loggedInUser = userNameTF.text
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
    @IBAction func loginButtonTapped() {
        
        if userAndPasswords.keys.contains(userNameTF.text ?? "") &&
        passwordTF.text ?? "" == userAndPasswords[userNameTF.text ?? ""] {
            print("User name and password is correct")
        } else {
            showAlertFailedLogin()
            }
        }
    
    
    @IBAction func forgotUserButtonTapped() {
    
        let userAlert = UIAlertController(
            title: "Don't worry!",
            message: "Your user name is User1",
            preferredStyle: .alert
        )
        
        let userAlertAction = UIAlertAction(
            title: "OK",
            style: .default
        )
        
        userAlert.addAction(userAlertAction)
        present(userAlert, animated: true)
    }
   
 
    @IBAction func forgotPasswordButtonTapped() {
        
        let userAlert = UIAlertController(
            title: "Don't worry!",
            message: "Your password is Pas1",
            preferredStyle: .alert
        )
        
        let userAlertAction = UIAlertAction(
            title: "OK",
            style: .default
        )
        
        userAlert.addAction(userAlertAction)
        present(userAlert, animated: true)
    }
 
    
    private func showAlertFailedLogin() {
        
        let userAlert = UIAlertController(
            title: "Opps!",
            message: "Login or password is not correct, please try again",
            preferredStyle: .alert
        )
        
        let userAlertAction = UIAlertAction(
            title: "OK",
            style: .default)
            { _ in self.passwordTF.text = ""
            }
        
        userAlert.addAction(userAlertAction)
        present(userAlert, animated: true)
    }
    
    

    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}
    

