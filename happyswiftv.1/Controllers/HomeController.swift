//
//  homecontroller.swift
//  happyswiftv.1
//
//  Created by Bosta Harry Hagata Ginting on 16/08/18.
//  Copyright © 2018 Bosta Harry Hagata Ginting. All rights reserved.
//

import UIKit

class HomeController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let Konten = ContentSwift().JudulContentSwift
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Konten.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ContentCollectionViewCell", for: indexPath) as! ContentCollectionViewCell
        
        cell.LabelJudulKonten.text = "\(Konten[indexPath.row])"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(Konten[indexPath.row])
        performSegue(withIdentifier: "SubKonten", sender: indexPath)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var index = sender as! IndexPath
        let destination = segue.destination as! SubmenuController
        switch index.row {
        case 0:
            destination.SubKonten = ContentSwift().BelajarSwift1
        case 1:
            destination.SubKonten = ContentSwift().BelajarSwift2
        case 2:
            destination.SubKonten = ContentSwift().BelajarSwift3
        default:
            return
        }
    }

}
