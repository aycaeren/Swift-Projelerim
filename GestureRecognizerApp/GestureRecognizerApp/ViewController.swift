//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Ayça Eren on 8.05.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    var isFatma = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true //gösreli tıklanabilir yapar
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    @objc func changePic (){
        if isFatma == true {
            imageView.image = UIImage(named: "selena gomez")
            myLabel.text = "Selena Gomez"
            isFatma = false }
        else {
            imageView.image = UIImage(named: "fatma turgutt")
            myLabel.text = "Fatma Turgut"
            isFatma = true }
        }
        }
    



