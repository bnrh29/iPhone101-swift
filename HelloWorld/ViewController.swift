//
//  ViewController.swift
//  HelloWorld
//
//  Created by bnrh29 on 2014/08/12.
//  Copyright (c) 2014年 Hironobu Abe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
                            
    @IBOutlet weak var textField: UITextField!

    @IBOutlet weak var label: UILabel!

    @IBAction func changeGreeting(sender: AnyObject) {
        self.userName = self.textField.text

        var nameString: String? = self.userName
        
        if (nameString == nil) {
            nameString = "World"
        }
        
        var greeting : String = "Hello \(nameString!)"
        self.label.text = greeting
    }
    
    var userName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(theTextField: UITextField!) -> Bool {
        if (theTextField == self.textField){
//            self.view.endEditing(true)
            theTextField.resignFirstResponder()
        }
        return false
    }

}

