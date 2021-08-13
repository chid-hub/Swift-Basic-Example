//
//  ViewController.swift
//  MyFirstProject
//
//  Created by Chidhambaram S on 11/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("")
    }

    @IBAction func signInAction(_ sender: Any) {
       
       let username = self.userNameTextField.text
        let password = self.passwordTextField.text

        if username == "User" && password == "1234" {
            
            print("You are successfully logged in")
        }else{
            print("Useraname or password is worng")
        }
        
        print("signInAction clicked")
    }
    
}

