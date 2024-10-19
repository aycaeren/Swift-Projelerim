//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Ayça Eren on 2.03.2024.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var myLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = myName
    }
    

    
}
