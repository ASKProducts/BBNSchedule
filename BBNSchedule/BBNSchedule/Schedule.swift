//
//  Schedule.swift
//  BBNSchedule
//
//  Created by Aaron Kaufer on 1/25/15.
//  Copyright (c) 2015 Aaron Kaufer. All rights reserved.
//

import UIKit

class Schedule: NSObject {
   
    var days: [Day] = []
    //yes, day[0] = monday
    
    override init() {
        days = [Day(name: "Monday"), Day(name: "Tuesday"), Day(name: "Wednesday"), Day(name: "Thursday"), Day(name: "Friday") ]
    }
    
    /*
    Syntax for command is: "type day# starttime endtime name"
    type possibilities: 
        a = add
        r = remove
    */
    func parseCommand(command: String){
        var components = command.componentsSeparatedByString(" ")
        
        var command = components[0]
        var day = components[1].toInt()!
        var startTime = components[2].toInt()!
        var endTime = components[3].toInt()!
        var name = components[4]
        
        var newBlock = Block(name: name, startTime: startTime, endTime: endTime)
        
        if command == "a" {
            days[day].addBlock(newBlock)
        }
        else if command == "b" {
            days[day].removeBlock(newBlock)
        }
    }
    
}
