//
//  addPRTableViewController.swift
//  PR'd - Simple PR Tracking
//
//  Created by Nate on 5/7/16.
//  Copyright © 2016 Nate. All rights reserved.
//

import UIKit

class addPRTableViewController: UITableViewController, UITextFieldDelegate {
    
    @IBOutlet var txtPR: UITextField!
    @IBOutlet var txtDesc: UITextField!
    
    @IBOutlet weak var txtWeight: UITextField!
    
    var text: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        txtPR.delegate = self
        
        if text != nil {
            txtPR.text = text!
        }
        
        self.navigationController!.navigationBar.tintColor = UIColor(red: 246/255.0, green: 75/255.0, blue: 55/255.0, alpha: 1.0)

        
    }
    
    
    
    
    
    
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        // #warning Incomplete implementation, return the number of sections
        
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // #warning Incomplete implementation, return the number of rows
        
        return 3
    }
    
  
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange,
                   replacementString string: String) -> Bool
    {
        let maxLength = 20
        let currentString: NSString = textField.text!
        let newString: NSString =
            currentString.stringByReplacingCharactersInRange(range, withString: string)
        return newString.length <= maxLength
    }
    
    
    
    
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        
//        let cell = tableView.dequeueReusableCellWithIdentifier("prcell", forIndexPath: indexPath)
//        
//        
//        // Configure the cell...
//        
//        
//        
//        return cell
//    }
    
    //Button Clicked
    @IBAction func btnAddTask(sender : UIBarButtonItem){
        if (txtPR.text == ""){
            //Task Title is blank, do not add a record
        } else {
            //add record
            let name: String = txtPR.text!
            let description: String = txtDesc.text!
            let weight: String = txtWeight.text!
            taskMgr.addTask(name, desc: description, weight: weight)
            
            //dismiss keyboard and reset fields
            
            self.view.endEditing(true)
            txtPR.text = nil
            txtDesc.text = nil
            txtWeight.text = nil
            

            
        }
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
    override func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header: UITableViewHeaderFooterView = view as! UITableViewHeaderFooterView //recast your view as a UITableViewHeaderFooterView
        header.textLabel!.textColor = UIColor(red: 246/255, green: 75/255, blue: 55/255, alpha: 1.0)  //make the text Black
        
    }
    

    
   


    
}

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
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
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    

