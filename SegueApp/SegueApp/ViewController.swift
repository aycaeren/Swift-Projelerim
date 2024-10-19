//
//  ViewController.swift
//  SegueApp
//
//  Created by Ayça Eren on 2.03.2024.
//

import UIKit

class ViewController: UIViewController {

    var userName = ""
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        nameTextField.text = ""
    }
    @IBAction func nextButton(_ sender: Any) {
        userName = nameTextField.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
    
}

