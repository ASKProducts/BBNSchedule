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
//    "a 0 0800 0815 Assembly", //add monday 8:00-8:15 assembly
//    "a 0 0820 0905 D", //add monday 8:20-9:05 D
//    "a 0 0910 1000 B",
//    "a 0 1000 1020 B_Lab",
//    "a 0 1025 1110 F",
//    "a 0 1115 1140 L1",
//    "a 0 1145 1235 L2",
//    "a 0 1115 1205 A1",
//    "a 0 1145 1235 A2",
//    "a 0 1240 1325 X",
//    "a 0 1330 1420 C",
//    "a 0 1425 1510 G",
    "a 0 1905 1905 1st",
    "a 0 1907 1907 2nd"

    
]

func initRegularWeeklySchedule(){
    
    for com in regularWeeklyScheduleCommands{
        RegularWeeklySchedule.parseCommand(com)
    }
    
}