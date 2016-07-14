//
//  PRManager.swift
//  PR'd - Simple PR Tracking
//
//  Created by Nate on 5/9/16.
//  Copyright © 2016 Nate. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct AddPR {
    var name = "Name"
    var desc = "Description"
    var weight = "Weight"
}

class TaskManager: NSObject {
    
    var tasks = [AddPR]()
    var persistenceHelper: PersistenceHelper = PersistenceHelper()
    
    override init(){
        
        let tempTasks:NSArray = persistenceHelper.list("Task")
        for res:AnyObject in tempTasks{
            tasks.append(AddPR(name:res.valueForKey("name")as! String,desc:res.valueForKey("desc") as! String,weight:res.valueForKey("weight") as! String))
        }
    }
    
    
    func addTask(name:String, desc: String, weight: String){
        
        var dicTask: Dictionary<String, String> = Dictionary<String,String>()
        dicTask["name"] = name
        dicTask["desc"] = desc
        dicTask["Weight"] = weight

        
        if(persistenceHelper.save("Task", parameters: dicTask)){
            tasks.append(AddPR(name: name, desc: desc, weight:weight))
        }
    }
    
    func removeTask(index:Int){
        
        let value:String = tasks[index].name
        
        if(persistenceHelper.remove("Task", key: "name", value: value)){
            tasks.removeAtIndex(index)
        }
    }
    
    
}