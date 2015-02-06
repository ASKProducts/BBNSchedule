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
    "a 0 0800 0815 Assembly",
    "a 0 0820 0905 D",
    "a 0 0910 1000 B",
    "a 0 1000 1020 B_Lab",
    "a 0 1025 1110 F",
    "a 0 1115 1140 L1",
    "a 0 1145 1235 L2",
    "a 0 1115 1205 A1",
    "a 0 1145 1235 A2",
    "a 0 1240 1325 X",
    "a 0 1330 1420 C",
    "a 0 1425 1510 G",
    "a 1 0800 0815 Advisory",
    "a 1 0820 0905 E",
    "a 1 0910 1000 C",
    "a 1 1000 1020 C_Lab",
    "a 1 1025 1110 D",
    "a 1 1115 1140 L1",
    "a 1 1145 1235 L2",
    "a 1 1115 1205 B1",
    "a 1 1145 1235 B2",
    "a 1 1240 1220 X",
    "a 1 1325 1415 F",
    "a 1 1415 1435 F_Lab",
    "a 1 1440 1525 A",
    "a 2 0800 0815 Class_Meeting",
    "a 2 0820 0905 G",
    "a 2 0910 1000 E",
    "a 2 1000 1020 E_Lab",
    "a 2 1025 1110 C",
    "a 2 1115 1140 L1",
    "a 2 1145 1235 L2",
    "a 2 1115 1205 F1",
    "a 2 1145 1235 F2",
    "a 2 1240 1325 Activities",
    "a 3 0800 0815 Sign_In",
    "a 3 0820 0905 Free",
    "a 3 0910 1000 Science",
    "a 3 1000 1020 Science_Lab",
    "a 3 1025 1105 X",
    "a 3 1110 1135 CompSci",
    "a 3 1200 1230 Lunch",
    "a 3 1235 1320 English",
    "a 3 1325 1415 French",
    "a 3 1415 1435 French_Lab",
    "a 3 1440 1525 FilmVideo",
    "a 4 0800 0815 Assembly",
    "a 4 0820 0905 C",
    "a 4 0910 1000 G",
    "a 4 1000 1020 G_Lab",
    "a 4 1025 1110 B",
    "a 4 1115 1140 L1",
    "a 4 1145 1235 L2",
    "a 4 1115 1205 D1",
    "a 4 1145 1235 D2",
    "a 4 1240 1325 A",
    "a 4 1330 1420 E",
    "a 4 1425 1510 X"





    
]

func initRegularWeeklySchedule(){
    
    for com in regularWeeklyScheduleCommands{
        RegularWeeklySchedule.parseCommand(com)
    }
    
}