//
//  DataTableExercisesTableViewController.swift
//  PR'd - Simple PR Tracking
//
//  Created by Nate on 5/4/16.
//  Copyright © 2016 Nate. All rights reserved.
//

import UIKit

class DataTableExercisesTableViewController: UITableViewController {
    
    
    let exercises = ["Abs", "Arms", "Back", "Chest", "Legs", "Shoulders", "Triceps"]
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
           self.navigationController!.navigationBar.tintColor = UIColor(red: 246/255.0, green: 75/255.0, blue: 55/255.0, alpha: 1.0)
        self.tableView.reloadData()
        
      

    }
    
      
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        // #warning Incomplete implementation, return the number of sections
        
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return exercises.count
        
          }

    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = exercises[indexPath.row]
        
        
        // Configure the cell...
        
      
        
            return cell
        
    }
    

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
     
            switch indexPath.row {
            case 0:
                performSegueWithIdentifier("abSegue", sender: self)
            case 1:
                performSegueWithIdentifier("armSegue", sender: self)
            case 2:
                performSegueWithIdentifier("backSegue", sender: self)
            case 3:
                performSegueWithIdentifier("chestSegue", sender: self)
            case 4:
                performSegueWithIdentifier("legSegue", sender: self)
            case 5:
                performSegueWithIdentifier("shouldersSegue", sender: self)
            case 6:
                performSegueWithIdentifier("tricepSegue", sender: self)
            default:
                return;
            }
        
        
    }
    
}

    
      
        
        func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            if segue.identifier == "abSegue" {
                _ = segue.destinationViewController as? AbExercisesTableViewController
                
            }
            
            if segue.identifier == "armSegue" {
                _ = segue.destinationViewController as? ArmExercisesTableViewController
                
            }
            
            if segue.identifier == "backSegue" {
                _ = segue.destinationViewController as? BackExercisesTableViewController
                
            }
            
            if segue.identifier == "chestSegue" {
                _ = segue.destinationViewController as? ChestExercisesTableViewController
                
            }
            
            if segue.identifier == "legSegue" {
                _ = segue.destinationViewController as? LegExercisesTableViewController
                
            }
            
            if segue.identifier == "shouldersSegue" {
                _ = segue.destinationViewController as? ShoulderExercisesTableViewController
                
            }
            
            if segue.identifier == "tricepSegue" {
                _ = segue.destinationViewController as? TricepExercisesTableViewController
                
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

}
