//
//  SignUpViewController.swift
//  MyFirstProject
//
//  Created by Rahul chowdary Balla on 8/12/21.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var emailIdTextField: UITextField!
    
    @IBAction func signUpAction(_ sender: Any) {
        
        let firstName = self.firstNameTextField.text
        
        let lastName = self.lastNameTextField.text
        
        let emailId = self.emailIdTextField.text
        
        let password = self.passwordTextField.text
        
        let confirmPassword = self.confirmPasswordTextField.text
        
        if firstName?.count == 0 {
        
            print("firstName should not be empty")
        }
        else if lastName?.count == 0 {
            print("lastName should not be empty")
        } else if emailId?.count == 0{
            print("emailId should not be empty")
        }
        else if password?.count == 0{
    
        print("password should not be empty")
        }
        else if confirmPassword?.count == 0{
            print("confirmPassword should not be empty")
        }
        else if password != confirmPassword{
            print("password does not match")
        }
        else {
            print("signUp successful")
        }
    
    }
      
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

