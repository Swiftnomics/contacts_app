//
//  ContactInputViewController.swift
//  Contacts
//
//  Created by DataBates on 1/12/15.
//  Copyright (c) 2015 Kale Mobile. All rights reserved.
//

import UIKit

protocol ContactInputViewControllerDelegate {
    func didUpdateContact(senderClass: AnyObject, aName: String, aPhoneNumber: String)
}

class ContactInputViewController: UIViewController, UITextFieldDelegate {
    
    // Properties
    var name = ""
    var phoneNumber = ""
    var delegate: ContactInputViewControllerDelegate?
 
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.delegate = self
        phoneField.delegate = self
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        if name != "" && phoneNumber != "" {
            delegate!.didUpdateContact(self, aName: name, aPhoneNumber: phoneNumber)
        }
    }
    

    
// Textfield Delegates
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        if textField.tag == 1 {
            name = textField.text
        } else {
            phoneNumber = textField.text
        }
        
        println("Name: \(name), Phone: \(phoneNumber)")
        
        return true
    }
    
    

    

    

    
}





















