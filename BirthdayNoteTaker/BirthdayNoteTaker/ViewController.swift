//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Ayça Eren on 1.03.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var birthdayTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storedName as? String{
            nameLabel.text = newName
        }
        if let newBirthday = storedBirthday as? String{
            birthdayLabel.text = newBirthday
        }
    }

    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.setValue(nameTextField.text!, forKey: "name")
        UserDefaults.standard.setValue(birthdayTextField.text!, forKey: "birthday")
        
        nameLabel.text = "Name: \(nameTextField.text!)"
        birthdayLabel.text = "Birthday: \(birthdayTextField.text!)"
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        _ = UserDefaults.standard.object(forKey: "birthday")
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "name: "
        }
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = "birthday: "
        }
        
    }
    
    
}

