//
//  Contacts.swift
//  Contacts
//
//  Created by DataBates on 12/31/14.
//  Copyright (c) 2014 Kale Mobile. All rights reserved.
//

import UIKit

class Contacts: UITableViewController {

    struct ContactInfo {
        var name: String
        var phoneNumber: String
    }
    
    var listOfContacts: [ContactInfo] = []
    
    var firstContact = ContactInfo(name: "John Norton", phoneNumber: "(316) 123-4567")
    var secondContact = ContactInfo(name: "Joe Blow", phoneNumber: "(713) 123-4567")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listOfContacts.append(firstContact)
        listOfContacts.append(secondContact)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        
        //change to return 1
        //return 0
        return 1
    }
    
// Change the return value of the tableView.numberOfRowsInSection method to listOfContacts.count

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        //return 0
         //return 10
        return listOfContacts.count
       
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell
        
        let cell = tableView.dequeueReusableCellWithIdentifier("contact", forIndexPath: indexPath) as UITableViewCell

         // Configure the cell...
        cell.textLabel!.text = listOfContacts[indexPath.row].name
        cell.detailTextLabel!.text = listOfContacts[indexPath.row].phoneNumber

        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ToDetail" {
            let indexPath = self.tableView.indexPathForSelectedRow()
            let theSelectedRow = listOfContacts[indexPath!.row]
            let theDestination = (segue.destinationViewController as ContactDetails)
            
            theDestination.contactName = theSelectedRow.name
            theDestination.contactPhone = theSelectedRow.phoneNumber
        }
    }
    
    
    
    
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
