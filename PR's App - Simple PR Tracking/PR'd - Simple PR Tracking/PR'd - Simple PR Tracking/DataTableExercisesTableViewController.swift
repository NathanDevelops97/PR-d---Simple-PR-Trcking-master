//
//  DataTableExercisesTableViewController.swift
//  PR'd - Simple PR Tracking
//
//  Created by Nate on 5/4/16.
//  Copyright © 2016 Nate. All rights reserved.
//

import UIKit

class DataTableExercisesTableViewController: UITableViewController, UISearchBarDelegate, UISearchControllerDelegate {
    
    let exercises = ["Abs", "Arms", "Back", "Chest", "Legs", "Shoulders", "Triceps"]
    
    let allExercises = ["Ab Roller", "Crunches", "Flat Lying Bench Raise", "Leg Raises", "Russian Twist", "Weighted Crunch","Tricep Pushdown V Bar", "Barbell Tricep Curl", "Lat Pull Down - V Bar", "Barbell Curl", "Dumbell Curls Alternating", "Preacher Curl", "Reverse Barbell Curl","Barbell Row", "Cable Row", "Chin Up", "Straight Leg Deadlift", "Sumo Deadlift", "Dumbell Row", "Dumbell Shrug", "Hyperextensions", "Lat Pull Down", "Pull Up (BodyWeight)", "Reverse Grip Barbell Row", "Pull Up (Weighted)","Barbell Tricep Curl", "Bench Press", "Bento Over Flyes", "Cable Crossovers", "Decline Dumbell Press", "Dumbell Press", "Dumbell Flies", "Incline Bench Press", "Incline Dumbell Flyes","Back Squat","Calf Raises", "Donkey Calf Raises", "Dumbell Squat", "Front Squat", "Leg Curls", "Leg Extensions", "Leg Press", "Lunges","Arnold Dumbell Press","Dumbell Lateral Raise", "Dumbell Side Lateral Raise", "Front Dumbell Press", "Military Press", "Shoulder Dumbell Press", "Standing Shoulder Press", "Upright Barbell Row", "Upright Rows","Close Grip Bench Press","Dips", "Dips (Weighted)", "Pushdowns", "Rope Extensions", "Tricep Extensions", "Barbell Tricep Curl"]
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    @IBOutlet var ExerciseTable: UITableView!
    
    var filteredData: [String]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        //searchBar.delegate = self
        //filteredData = exercises

        
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
    
    
    // NEXT VERSION
    
//    // This method updates filteredData based on the text in the Search Box
//    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
//        
//        
//        filteredData = searchText.isEmpty ? allExercises : allExercises.filter({(dataString: String) -> Bool in
//            return dataString.rangeOfString(searchText, options: .CaseInsensitiveSearch) != nil
//        })
//        
//        // When there is no text, filteredData is the same as the original data
//        if searchText.isEmpty {
//            filteredData = exercises
//        } else {
//            
//            // The user has entered text into the search box
//            // Use the filter method to iterate over all items in the data array
//            // For each item, return true if the item should be included and false if the
//            // item should NOT be included
//            filteredData = allExercises.filter({(dataItem: String) -> Bool in
//                // If dataItem matches the searchText, return true to include it
//                if dataItem.rangeOfString(searchText, options: .CaseInsensitiveSearch) != nil {
//                    return true
//                } else {
//                    return false
//                }
//            })
//        }
//        tableView.reloadData()
//    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = exercises[indexPath.row]
        
        cell.accessoryType = .DisclosureIndicator


        // Configure the cell...
        
        
        
        return cell
        
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if (tableView == self.tableView) {
        
        switch indexPath.row {
        case 0:
            performSegueWithIdentifier("abSegue", sender: self)
        case 1:
            performSegueWithIdentifier("armSegue", sender: self)
        case 2:
            performSegueWithIdentifier("backSegue", sender: self)
        case 3:
            performSegueWithIdentifier("legSegue", sender: self)
        case 4:
            performSegueWithIdentifier("chestSegue", sender: self)
        case 5:
            performSegueWithIdentifier("shouldersSegue", sender: self)
        case 6:
            performSegueWithIdentifier("tricepSegue", sender: self)
        default:
            return;
        }
    

    
}

var text:String = ""
    
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
        
        if segue.identifier == "legSegue" {
            _ = segue.destinationViewController as? LegExercisesTableViewController
            
        }
        
        if segue.identifier == "chestSegue" {
            _ = segue.destinationViewController as? ChestExercisesTableViewController
            
        }
        
        if segue.identifier == "shouldersSegue" {
            _ = segue.destinationViewController as? ShoulderExercisesTableViewController
            
        }
        
        if segue.identifier == "tricepSegue" {
            _ = segue.destinationViewController as? TricepExercisesTableViewController
            
        }
        
//        else {
//            
//            if let speciesDetailVC = segue.destinationViewController as? addPRTableViewController
//            {
//                // gotta check if we're currently searching
//                if self.searchDisplayController!.active {
//                    let indexPath = self.searchDisplayController?.searchResultsTableView.indexPathForSelectedRow!
//                    if indexPath != nil {
//                        speciesDetailVC.text = self.allExercises[indexPath!.row]
//                    }
//                } else {
//                    let indexPath = self.ExerciseTable?.indexPathForSelectedRow!
//                    if indexPath != nil {
//                        speciesDetailVC.text = self.allExercises[indexPath!.row]
//                    }
//                }
//        }
//  }
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
    

}
