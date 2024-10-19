//
//  ViewController.swift
//  alertProject
//
//  Created by Ayça Eren on 26.03.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signupClicked(_ sender: Any) {
        
        /*let alert = UIAlertController(title: "error!", message: "username not found :((", preferredStyle: UIAlertController.Style.alert)
        
        let okbutton = UIAlertAction(title: "ok", style: UIAlertAction.Style.default) { UIAlertAction in
            print("button clicked")
        }
        alert.addAction(okbutton)
        self.present(alert, animated: true, completion: nil)
        */
        
        if usernameText.text == ""{
           makeAlert(titleİnput: "error!", messageİnput: "username not found")
        }else if passwordText.text == ""{
            makeAlert(titleİnput: "error!", messageİnput: "password not found")
        }else if passwordText.text != password2Text.text{
            makeAlert(titleİnput: "error!", messageİnput: "passwords don't match")
        }else{
            makeAlert(titleİnput: "success", messageİnput: "user creataed")
        }
        func makeAlert(titleİnput:String, messageİnput:String){
            let alert = UIAlertController(title: titleİnput, message: messageİnput, preferredStyle: UIAlertController.Style.alert)
            let okbutton = UIAlertAction(title: "ok", style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(okbutton)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}

