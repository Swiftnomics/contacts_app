//
//  ContactDetails.swift
//  Contacts
//
//  Created by DataBates on 1/7/15.
//  Copyright (c) 2015 Kale Mobile. All rights reserved.
//

import UIKit

class ContactDetails: UIViewController {

    @IBOutlet weak var contactNameLabel: UILabel!
    
    @IBOutlet weak var contactPhoneLabel: UILabel!
    
    var contactName = " "
    var contactPhone = " "
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        contactNameLabel.text = contactName
        contactPhoneLabel.text = contactPhone
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    

    
    

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
