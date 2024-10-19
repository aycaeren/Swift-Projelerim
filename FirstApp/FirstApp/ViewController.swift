//
//  ViewController.swift
//  FirstApp
//
//  Created by Ayça Eren on 13.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var foto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func devamtikla(_ sender: Any) {
        
        foto.image = UIImage(named: "manzara1")
        foto.image = UIImage(named: "manzara2")
    }
    
}

