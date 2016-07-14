//
//  PRViewController.swift
//  PR'd - Simple PR Tracking
//
//  Created by Nate on 5/11/16.
//  Copyright © 2016 Nate. All rights reserved.
//

import UIKit

class PRViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tblTasks : UITableView!
    
    
    //For persisting data
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblTasks.reloadData()
        self.tblTasks.registerNib(UINib(nibName: "PRTableViewCell", bundle: nil), forCellReuseIdentifier: "PRTableCell")
        tblTasks.tableFooterView = UIView()
    
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        self.tblTasks.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return taskMgr.tasks.count
        
    }
    
    //Define how our cells look - 2 lines a heading and a subtitle
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        
        let identifier = "PRTableCell"
        var cell: PRTableViewCell! = tableView.dequeueReusableCellWithIdentifier(identifier) as? PRTableViewCell
        
        if cell == nil {
            tableView.registerNib(UINib(nibName: "PRTableViewCell", bundle: nil), forCellReuseIdentifier: identifier)
            cell = tableView.dequeueReusableCellWithIdentifier(identifier) as? PRTableViewCell
        }
        
        
        //        Assign the contents of our var "items" to the textLabel of each cell
        //        cell.textLabel!.text = taskMgr.tasks[indexPath.row].name
        //        cell.detailTextLabel!.text = taskMgr.tasks[indexPath.row].desc
        
        cell.PRLabel.text = taskMgr.tasks[indexPath.row].name
        cell.NotesLabel.text = taskMgr.tasks[indexPath.row].desc
        cell.WeightLabel.text = taskMgr.tasks[indexPath.row].weight + "lb"
        
        
        
        
        
        
        return cell
        
        
        
    }
    
    
    
    var prNameString:String!
    var prNotesString:String!
    var prDescString:String!
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        print("You selected cell #\(indexPath.row)!")
        
        // Get Cell Label
        let indexPath = tblTasks.indexPathForSelectedRow;
        let currentCell = tableView.cellForRowAtIndexPath(indexPath!) as! PRTableViewCell!;
        
        prNameString = currentCell.PRLabel.text
        prNotesString = currentCell.NotesLabel.text
        prDescString = currentCell.WeightLabel.text
        performSegueWithIdentifier("prDetails", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "prDetails" {
            
            // initialize new view controller and cast it as your view controller
            let viewController = segue.destinationViewController as! PRCellsViewController
            
            
            // your new view controller should have property that will store passed value
            viewController.prNameValue = prNameString
            viewController.prNotesValue = prNotesString
            viewController.prDescValue = prDescString

            
            
            
            
            
            
        }
        
        
        
        
    }
    
   
    
    
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        
        if (editingStyle == UITableViewCellEditingStyle.Delete){
            
            taskMgr.removeTask(indexPath.row)
            tblTasks.reloadData()
        }
        
        
        
        
    }
    
    
    
    
}
