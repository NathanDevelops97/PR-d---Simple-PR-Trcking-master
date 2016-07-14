//
//  PRPercentTableViewController.swift
//  PR'd - Simple PR Tracking
//
//  Created by Nate on 5/30/16.
//  Copyright © 2016 Nate. All rights reserved.
//

import UIKit

class PRPercentTableViewController: UITableViewController {
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.reloadData()
        self.tableView.registerNib(UINib(nibName: "prPercentTableViewCell", bundle: nil), forCellReuseIdentifier: "prDetails")
        self.tableView.registerNib(UINib(nibName: "percentageHeaderTableViewCell", bundle: nil), forCellReuseIdentifier: "headerCell")
        self.tableView.registerNib(UINib(nibName: "percentageTableViewCell", bundle: nil), forCellReuseIdentifier: "percentCell")
        tableView.tableFooterView = UIView()
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        tableView.allowsSelection = false;
        
        self.navigationController!.navigationBar.tintColor = UIColor(red: 246/255.0, green: 75/255.0, blue: 55/255.0, alpha: 1.0)


    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
    
    
    var prNameValue:String!
    var prNotesValue:String!
    var prDescValue:String!
    
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 182
        }
        else {
            return 44
        }
        
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        
        
        
        
        if indexPath.row == 0 {
            
            
            let identifier = "prDetails"
            var cell: prPercentTableViewCell! = tableView.dequeueReusableCellWithIdentifier(identifier) as? prPercentTableViewCell
            if cell == nil {
                tableView.registerNib(UINib(nibName: "prPercentTableViewCell", bundle: nil), forCellReuseIdentifier: identifier)
                cell = tableView.dequeueReusableCellWithIdentifier(identifier) as? prPercentTableViewCell
            }
            cell.prName.text = prNameValue
            cell.prNotes.text = prNotesValue
            cell.prWeight.text = prDescValue
            return cell
        }
            
        else if indexPath.row == 1 {
            let identifier1 = "headerCell"
            var headerCell: percentageHeaderTableViewCell! = tableView.dequeueReusableCellWithIdentifier(identifier1) as? percentageHeaderTableViewCell
            
            if headerCell == nil {
                tableView.registerNib(UINib(nibName: "percentageHeaderTableViewCell", bundle: nil), forCellReuseIdentifier: identifier1)
                headerCell = tableView.dequeueReusableCellWithIdentifier(identifier1) as? percentageHeaderTableViewCell
            }
            
            headerCell.ormLabel.text = "One Rep Max Percentage"
            
            return headerCell
        }
            
        else {
            let identifier2 = "percentCell"
            var percentageCell: percentageTableViewCell! = tableView.dequeueReusableCellWithIdentifier(identifier2) as? percentageTableViewCell
            
            if percentageCell == nil {
                tableView.registerNib(UINib(nibName: "percentageTableViewCell", bundle: nil), forCellReuseIdentifier: identifier2)
                percentageCell = tableView.dequeueReusableCellWithIdentifier(identifier2) as? percentageTableViewCell
            }
            
            
            return percentageCell
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
    
    

}