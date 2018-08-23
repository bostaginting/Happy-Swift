//
//  daftarcontroller.swift
//  happyswiftv.1
//
//  Created by Bosta Harry Hagata Ginting on 16/08/18.
//  Copyright © 2018 Bosta Harry Hagata Ginting. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class DaftarController: UIViewController {
  
    @IBOutlet weak var nameRegfield: UITextField!
    @IBOutlet weak var EmailRegFIeld: UITextField!
    @IBOutlet weak var PassRegField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

//        let daftarback = UIImageView (image: #imageLiteral(resourceName: "Reg.png"))
//        daftarback.translatesAutoresizingMaskIntoConstraints = false
//        daftarback.widthAnchor.constraint(equalToConstant: view.bounds.size.width).isActive = true
//        daftarback.heightAnchor.constraint(equalToConstant: view.bounds.size.height).isActive = true
//        view.addSubview(daftarback)
    }
    @IBAction func DaftarButton(_ sender: LoginController) {
        if EmailRegFIeld.text == ""{
            let alertController = UIAlertController(title: "error", message:"Enter email and password", preferredStyle: .alert)
            let defaultaction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultaction)
            present(alertController, animated: true, completion: nil)
            
        }else{
            Auth.auth().createUser (withEmail: EmailRegFIeld.text!, password: PassRegField.text!){ (user, error) in
                
                if error == nil {
                    print("you have succesfully signed up")
                    let vc = self.storyboard?.instantiateViewController (withIdentifier:"Home")
                    self.present(vc!, animated: true, completion: nil)
                }else{
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    self.present(alertController,animated: true, completion: nil)
                }
            
            }
        }
    }
    
 //git add .
//git commit -m "ubah register"
//git push origin dev
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
