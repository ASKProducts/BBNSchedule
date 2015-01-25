//
//  RegularSchedule.swift
//  BBNSchedule
//
//  Created by Aaron Kaufer on 1/25/15.
//  Copyright (c) 2015 Aaron Kaufer. All rights reserved.
//

import Foundation

var RegularWeeklySchedule: [Day] = []

func initRegularWeeklySchedule(){
    
    var monday = Day(name: "Monday")
    monday.addBlock(Block(name: "Assembly", startTime: 0800, endTime: 0815))
    monday.addBlock(Block(name: "D",        startTime: 0820, endTime: 0905))
    
    RegularWeeklySchedule.append(monday)
    
    var tuesday = Day(name: "Tuesday")
    
    RegularWeeklySchedule.append(tuesday)
    
    var wednesday = Day(name: "Eednesday")
    
    RegularWeeklySchedule.append(wednesday)
    
    var thursday = Day(name: "Thursday")
    
    RegularWeeklySchedule.append(thursday)
    
    var friday = Day(name: "Friday")
    
    RegularWeeklySchedule.append(friday)
    
    
}