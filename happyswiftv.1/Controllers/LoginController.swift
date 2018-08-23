//
//  logincontroller.swift
//  happyswiftv.1
//
//  Created by Bosta Harry Hagata Ginting on 16/08/18.
//  Copyright © 2018 Bosta Harry Hagata Ginting. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var TextFieldEmail: UITextField!
    @IBOutlet weak var TextFieldPassword: UITextField!

    @IBAction func ButtonMasuk(_ sender: HomeController) {
        print("TES")
        if self.TextFieldEmail.text == "" || self.TextFieldPassword.text == "" {
            let AlertController = UIAlertController (title: "Error", message: "Please Enter Email and Password", preferredStyle: .alert)
            let DefaultAction = UIAlertAction (title: "OK", style: .cancel, handler: nil)
            AlertController.addAction(DefaultAction)
            self.present(AlertController, animated: true, completion: nil)

        }else{
            Auth.auth().signIn(withEmail: self.TextFieldEmail.text!, password: self.TextFieldPassword.text!) {(user,error) in
                if error == nil{
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "HomeController")
                    self.present(vc!, animated: true, completion: nil)
                }else{
                    let AlertController = UIAlertController (title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let DefaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    AlertController.addAction(DefaultAction)
                    self.present(AlertController, animated: true, completion: nil)
                }
            }
        }
    }
}
