//
//  Block.swift
//  BBNSchedule
//
//  Created by Aaron Kaufer on 1/25/15.
//  Copyright (c) 2015 Aaron Kaufer. All rights reserved.
//

import UIKit

class Block: NSObject {
    var name : String;
    var startTime: String ;
    var endTime: String;
    
    init(name : String, startTime : String, endTime : String){
        self.name = name;
        self.startTime = startTime
        self.endTime = endTime
    }
}
