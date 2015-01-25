//
//  RegularSchedule.swift
//  BBNSchedule
//
//  Created by Aaron Kaufer on 1/25/15.
//  Copyright (c) 2015 Aaron Kaufer. All rights reserved.
//

import Foundation

var RegularWeeklySchedule: Schedule = Schedule()

var regularWeeklyScheduleCommands = [
    "a 0 0800 0815 Assembly", //add monday 8:00-8:15 assembly
    "a 0 0820 0905 D" //add monday 8:20-9:05 D

]

func initRegularWeeklySchedule(){
    
    for com in regularWeeklyScheduleCommands{
        RegularWeeklySchedule.parseCommand(com)
    }
    
}