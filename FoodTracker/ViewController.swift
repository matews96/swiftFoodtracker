//
//  ViewController.swift
//  FoodTracker
//
//  Created by Mateo Echeverri Yepes on 8/16/17.
//  Copyright © 2017 Mateo Echeverri Yepes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        // Hide the keyboard
        textField.resignFirstResponder()
        
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field's user input through delegate callbacks
        nameTextField.delegate = self // self refers to ViewController class
        
    }
    
    
    // MARK: Actions
    @IBAction func setDefauktLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    
}

