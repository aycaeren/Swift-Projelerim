//
//  ViewController.swift
//  hesapMakinesi
//
//  Created by Ayça Eren on 15.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumber: UITextField!
    
    @IBOutlet weak var secondNumber: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func artiTusu(_ sender: Any) {
        if let first = Int(firstNumber.text!){
            if let second = Int(secondNumber.text!){
                let result = first + second
                resultLabel.text = String(result)
            }
        }
    }
    @IBAction func eksiTusu(_ sender: Any) {
        if let first = Int(firstNumber.text!){
            if let second = Int(secondNumber.text!){
                let result = first - second
                resultLabel.text = String(result)
            }
        }
    }
    @IBAction func carpmaTusu(_ sender: Any) {
        if let first = Int(firstNumber.text!){
            if let second = Int(secondNumber.text!){
                let result = first * second
                resultLabel.text = String(result)
            }
        }
    }
    @IBAction func bolmeTusu(_ sender: Any) {
        if let first = Int(firstNumber.text!){
            if let second = Int(secondNumber.text!){
                if first > second {
                    let result = first / second
                    
                    resultLabel.text = String(result)
                } else {
                    let result = second / first
                    resultLabel.text = "\(first) / \(second)"
                    resultLabel.text = String(result)
                }
               
                
            }
        }
    }
}

