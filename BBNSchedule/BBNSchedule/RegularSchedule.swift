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
    "a 0 0800 0815 Sign_In",
    "a 0 0820 0905 Free",
    "a 0 0910 1000 Science",
    "a 0 1000 1020 Science_Lab",
    "a 0 1025 1105 X",
    "a 0 1110 1135 CompSci",
    "a 0 1200 1230 Lunch",
    "a 0 1235 1320 English",
    "a 0 1325 1415 French",
    "a 0 1415 1435 French_Lab",
    "a 0 1440 1525 FilmVideo",



    
]

func initRegularWeeklySchedule(){
    
    for com in regularWeeklyScheduleCommands{
        RegularWeeklySchedule.parseCommand(com)
    }
    
}