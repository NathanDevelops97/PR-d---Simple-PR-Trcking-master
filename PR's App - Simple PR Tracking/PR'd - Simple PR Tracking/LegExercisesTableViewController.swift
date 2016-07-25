//
//  LegExercisesTableViewController.swift
//  PR'd - Simple PR Tracking
//
//  Created by Nate on 5/6/16.
//  Copyright © 2016 Nate. All rights reserved.
//

import UIKit

class LegExercisesTableViewController: UITableViewController, UISearchBarDelegate {
    
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet var legTable: UITableView!

    var legExercises = ["Back Squat","Calf Raises", "Donkey Calf Raises", "Dumbell Squat", "Front Squat", "Leg Curls", "Leg Extensions", "Leg Press", "Lunges"]
    
    var filteredData: [String]!

    
    override func viewDidLoad() {
        super.viewDidLoad()
           self.navigationController!.navigationBar.tintColor = UIColor(red: 246/255.0, green: 75/255.0, blue: 55/255.0, alpha: 1.0)
        
        tableView.dataSource = self
        searchBar.delegate = self
        filteredData = legExercises
        
    }
    
    // This method updates filteredData based on the text in the Search Box
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        // When there is no text, filteredData is the same as the original data
        if searchText.isEmpty {
            filteredData = legExercises
        } else {
            // The user has entered text into the search box
            // Use the filter method to iterate over all items in the data array
            // For each item, return true if the item should be included and false if the
            // item should NOT be included
            filteredData = legExercises.filter({(dataItem: String) -> Bool in
                // If dataItem matches the searchText, return true to include it
                if dataItem.rangeOfString(searchText, options: .CaseInsensitiveSearch) != nil {
                    return true
                } else {
                    return false
                }
            })
        }
        tableView.reloadData()
    }
    
    
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        // #warning Incomplete implementation, return the number of sections
        
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // #warning Incomplete implementation, return the number of rows
        
        return filteredData.count
    }
    
    
    
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("legExerciseCell", forIndexPath: indexPath)
        
        
        let leg = filteredData[indexPath.row]
        
        cell.accessoryType = .DisclosureIndicator

        
        // Configure the cell...
        
        cell.textLabel?.text = leg
        
        return cell
    }
    
    
    
    var text:String = ""
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        text = legExercises[indexPath.row]
        performSegueWithIdentifier("YourSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "YourSegue" {
            let yourOtherVC = segue.destinationViewController as? addPRTableViewController
            yourOtherVC?.text = text
        }
        
        func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
            filteredData = searchText.isEmpty ? legExercises : legExercises.filter({(dataString: String) -> Bool in
                return dataString.rangeOfString(searchText, options: .CaseInsensitiveSearch) != nil
            })
            
        }
        
        func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
            self.searchBar.showsCancelButton = true
        }
        
        func searchBarCancelButtonClicked(searchBar: UISearchBar) {
            searchBar.showsCancelButton = false
            searchBar.text = ""
            searchBar.resignFirstResponder()
        }
        

    }

    
    
    
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
