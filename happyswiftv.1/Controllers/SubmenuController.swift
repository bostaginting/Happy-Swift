//
//  submenucontroller.swift
//  happyswiftv.1
//
//  Created by Bosta Harry Hagata Ginting on 16/08/18.
//  Copyright © 2018 Bosta Harry Hagata Ginting. All rights reserved.
//

import UIKit

class SubmenuController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var TableKonten: UITableView!
    @IBOutlet weak var LabelKonten: UILabel!
    var SubKonten = [1,2,3,4]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SubKonten.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SubContentTableViewCell
        cell.LabelJudulSubKonten.text = "\(SubKonten[indexPath.row])"
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableKonten.dataSource = self
        TableKonten.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
