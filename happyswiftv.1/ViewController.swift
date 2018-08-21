//
//  ViewController.swift
//  happyswiftv.1
//
//  Created by Bosta Harry Hagata Ginting on 15/08/18.
//  Copyright © 2018 Bosta Harry Hagata Ginting. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logobackground: UIImageView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let Logobackground = UIImageView (image: #imageLiteral(resourceName: "Logo.png"))
        Logobackground.translatesAutoresizingMaskIntoConstraints = false
        Logobackground.widthAnchor.constraint(equalToConstant: view.bounds.size.width).isActive = true
        Logobackground.heightAnchor.constraint(equalToConstant: view.bounds.size.height).isActive = true
        view.addSubview(Logobackground)
    }




}

