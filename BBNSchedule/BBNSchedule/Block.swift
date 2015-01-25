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
    var startTime: Int ;
    var endTime: Int;
    
    init(name : String, startTime : Int, endTime : Int){
        self.name = name;
        self.startTime = startTime
        self.endTime = endTime
    }
    
    override func isEqual(object: AnyObject?) -> Bool {
        var blockVersion = object! as Block
        if blockVersion.name == self.name &&
           blockVersion.startTime == self.startTime &&
           blockVersion.endTime == self.endTime {
            return true
        }
        return false
    }
}
