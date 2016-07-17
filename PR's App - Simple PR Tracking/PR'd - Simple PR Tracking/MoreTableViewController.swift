//
//  MoreTableViewController.swift
//  PR'd - Simple PR Tracking
//
//  Created by Nate on 5/4/16.
//  Copyright © 2016 Nate. All rights reserved.
//

import UIKit

class MoreTableViewController: UITableViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
      
        
    }
    
    
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        // #warning Incomplete implementation, return the number of sections
        
        return 2
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // #warning Incomplete implementation, return the number of rows
        
        return 2
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let url : NSURL?
        
        switch indexPath.section{
        case 0:
            switch indexPath.row{
            case 0:
                url = NSURL(string: "https://itunes.apple.com/us/app/prs-simple-pr-tracking/id1116158620?ls=1&mt=8")
            case 1:
                url = NSURL(string: "itms-apps://itunes.apple.com/app/id1116158620")
            default:
                return;
            }
            
        case 1:
            switch indexPath.row{
            case 0:
                url = NSURL(string: "http://www.instagram.com/prsinsta")
            case 1:
                url = NSURL(string: "https://www.snapchat.com/add/nathangrant97")
            default:
                return;
            }
        default:
            return;
        }
        
        if url != nil{
            UIApplication.sharedApplication().openURL(url!)
        }
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)

    }
    
    
    

    
    
    
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        
//        let cell = tableView.dequeueReusableCellWithIdentifier("morecell", forIndexPath: indexPath)
//     
//        
//        // Configure the cell...
//        
//        
//        
//        return cell
//    }
    

    
    override func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header: UITableViewHeaderFooterView = view as! UITableViewHeaderFooterView //recast your view as a UITableViewHeaderFooterView
        header.textLabel!.textColor = UIColor(red: 246/255, green: 75/255, blue: 55/255, alpha: 1.0)  //make the text white
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