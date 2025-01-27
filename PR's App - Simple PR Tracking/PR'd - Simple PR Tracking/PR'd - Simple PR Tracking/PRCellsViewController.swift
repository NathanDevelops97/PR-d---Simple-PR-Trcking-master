//
//  PRCellsViewController.swift
//  PR'd - Simple PR Tracking
//
//  Created by Nate on 6/13/16.
//  Copyright © 2016 Nate. All rights reserved.
//

import UIKit
import StoreKit

class PRCellsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    
    @IBOutlet weak var prAndHeaderTable: UITableView!
    @IBOutlet weak var prPercentTable: UITableView!
   
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        


        prAndHeaderTable.dataSource = self
        prAndHeaderTable.delegate = self
        
        prPercentTable.dataSource = self
        prPercentTable.delegate = self
        

        
        
        // Register Cell Nib's
        
        self.prAndHeaderTable.registerNib(UINib(nibName: "prPercentTableViewCell", bundle: nil), forCellReuseIdentifier: "prDetails")
        self.prAndHeaderTable.registerNib(UINib(nibName: "percentageHeaderTableViewCell", bundle: nil), forCellReuseIdentifier: "headerCell")
        self.prPercentTable.registerNib(UINib(nibName: "percentageTableViewCell", bundle: nil), forCellReuseIdentifier: "percentCell")
        self.prAndHeaderTable.reloadData()
        self.prPercentTable.reloadData()
  
        self.navigationController!.navigationBar.tintColor = UIColor(red: 246/255.0, green: 75/255.0, blue: 55/255.0, alpha: 1.0)
        self.prAndHeaderTable.separatorStyle = UITableViewCellSeparatorStyle.None
        prAndHeaderTable.allowsSelection = false;
        self.prPercentTable.separatorStyle = UITableViewCellSeparatorStyle.None
        prPercentTable.allowsSelection = false;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
     func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        if tableView == prAndHeaderTable {
        
        if indexPath.row == 0 {
            return 208
        }
        else {
            return 44
        }
        
        } else {
            return 44
        }
        
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of items in the sample data structure.
        
        var count:Int?
        
        if tableView == self.prAndHeaderTable {
            count = 2
        }
        
        if tableView == self.prPercentTable {
            count = 10
        }
        
        return count!
        
    }
        
    
    var prNameValue:String!
    var prNotesValue:String!
    var prDescValue:String!

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell:UITableViewCell?
        
        if tableView == self.prAndHeaderTable {
            
            
            
            if indexPath.row == 0 {
                
                let identifier = "prDetails"
                var prDesc: prPercentTableViewCell! = tableView.dequeueReusableCellWithIdentifier(identifier) as? prPercentTableViewCell
                if prDesc == nil {
                    tableView.registerNib(UINib(nibName: "prPercentTableViewCell", bundle: nil), forCellReuseIdentifier: identifier)
                    prDesc = tableView.dequeueReusableCellWithIdentifier(identifier) as? prPercentTableViewCell
                }
                prDesc.prName.text = prNameValue
                prDesc.prNotes.text = prNotesValue
                prDesc.prWeight.text = prDescValue
                return prDesc
                
            } else {
                
                
                let identifier1 = "headerCell"
                var cell: percentageHeaderTableViewCell! = tableView.dequeueReusableCellWithIdentifier(identifier1) as? percentageHeaderTableViewCell
                
                if cell == nil {
                    tableView.registerNib(UINib(nibName: "percentageHeaderTableViewCell", bundle: nil), forCellReuseIdentifier: identifier1)
                    cell = tableView.dequeueReusableCellWithIdentifier(identifier1) as? percentageHeaderTableViewCell
                }
                
                cell.ormLabel.text = "One Rep Max Percentage"
                
                return cell

                
                
            }
        
            
        }
        
        
        
        
        if tableView == self.prPercentTable {
         
            let identifier2 = "percentCell"
            var pCell: percentageTableViewCell! = tableView.dequeueReusableCellWithIdentifier(identifier2) as? percentageTableViewCell
            
            if pCell == nil {
                tableView.registerNib(UINib(nibName: "percentageTableViewCell", bundle: nil), forCellReuseIdentifier: identifier2)
                pCell = tableView.dequeueReusableCellWithIdentifier(identifier2) as? percentageTableViewCell
                
                
                
            }
            
          


            
            if indexPath.row == 0 {
              
            let pWeight = (prDescValue as NSString).doubleValue * 0.95
                
            let result = Int(pWeight)

            pCell.percentageTxtLabel.text = "95% ORM"
                
            pCell.weightTxtLabel.text = String (result) + "lb" // Multipy by 0.95 etc.

            }
            
            else if indexPath.row == 1 {
            
                
                let pWeight = (prDescValue as NSString).doubleValue * 0.90
                
                let result = Int(pWeight)
                
                pCell.percentageTxtLabel.text = "90% ORM"
                
                pCell.weightTxtLabel.text = String (result) + "lb" // Multipy by 0.95 etc.
    
                
            }
            
            else if indexPath.row == 2 {
                
                
                let pWeight = (prDescValue as NSString).doubleValue * 0.80
                
                let result = Int(pWeight)
                
                pCell.percentageTxtLabel.text = "80% ORM"
                
                pCell.weightTxtLabel.text = String (result) + "lb" // Multipy by 0.95 etc.

                
            }
            else if indexPath.row == 3 {
             
                
                let pWeight = (prDescValue as NSString).doubleValue * 0.75
                
                let result = Int(pWeight)
                
                pCell.percentageTxtLabel.text = "75% ORM"
                
                pCell.weightTxtLabel.text = String (result) + "lb" // Multipy by 0.95 etc.

                
            }
            
            else if indexPath.row == 4 {
                
                
                let pWeight = (prDescValue as NSString).doubleValue * 0.65
                
                let result = Int(pWeight)
                
                pCell.percentageTxtLabel.text = "65% ORM"
                
                pCell.weightTxtLabel.text = String (result) + "lb" // Multipy by 0.95 etc.

                
            }
            
            else if indexPath.row == 5 {
                
                
                let pWeight = (prDescValue as NSString).doubleValue * 0.50
                
                let result = Int(pWeight)
                
                pCell.percentageTxtLabel.text = "50% ORM"
                
                pCell.weightTxtLabel.text = String (result) + "lb" // Multipy by 0.95 etc.

                
            }
            
            else if indexPath.row == 6 {
                
                
                let pWeight = (prDescValue as NSString).doubleValue * 0.45
                
                let result = Int(pWeight)
                
                pCell.percentageTxtLabel.text = "45% ORM"
                
                pCell.weightTxtLabel.text = String (result) + "lb" // Multipy by 0.95 etc.

               
            }
            
            else if indexPath.row == 7 {
                
                
                let pWeight = (prDescValue as NSString).doubleValue * 0.40
                
                let result = Int(pWeight)
                
                pCell.percentageTxtLabel.text = "40% ORM"
                
                pCell.weightTxtLabel.text = String (result) + "lb" // Multipy by 0.95 etc.

               
            }
            
            else if indexPath.row == 8 {
                
                
                let pWeight = (prDescValue as NSString).doubleValue * 0.35
                
                let result = Int(pWeight)
                
                pCell.percentageTxtLabel.text = "35% ORM"
                
                pCell.weightTxtLabel.text = String (result) + "lb" // Multipy by 0.95 etc.

            
            }
            
            else if indexPath.row == 9 {
                
                
                let pWeight = (prDescValue as NSString).doubleValue * 0.20
                
                let result = Int(pWeight)
                
                pCell.percentageTxtLabel.text = "20% ORM"
                
                pCell.weightTxtLabel.text = String (result) + "lb" // Multipy by 0.95 etc.

            
            }
            
           
            
            
            return pCell
         
            
        }
        
        
        
        return cell!
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