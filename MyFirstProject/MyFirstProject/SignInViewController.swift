//
//  ViewController.swift
//  MyFirstProject
//
//  Created by Chidhambaram S on 11/08/21.
//

import UIKit

class SignInViewController: UIViewController {

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
        
        let defaults = UserDefaults.standard
        
        let signUpDictionary = defaults.dictionary(forKey: "signUp_key")
        
        if let userName_defaults = signUpDictionary?["firstName"] , let password_defaults = signUpDictionary?["password"]{
            
            if username == userName_defaults as! String && password == password_defaults as! String {
                
                print("You are successfully logged in")
            }else{
                print("Useraname or password is worng")
        }
        }
        
        print("signInAction clicked")
    }
    
}

