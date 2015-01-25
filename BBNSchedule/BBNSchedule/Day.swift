//
//  Day.swift
//  BBNSchedule
//
//  Created by Aaron Kaufer on 1/25/15.
//  Copyright (c) 2015 Aaron Kaufer. All rights reserved.
//

import UIKit

class Day: NSObject {
   
    var name : String;
    var blocks : [Block]
    init(name : String){
        self.name = name
        blocks = []
    }
    func addBlock( blk : Block ){
        blocks.append(blk);
    }
    func printBlocks(){
        for index in 0..<blocks.count{
            println(blocks[index].name )
        }
    }
    func blocksAtTime(time : Int) -> [Block]{
        
        let filteredArray = blocks.filter {
            $0.startTime.toInt() < time && time < $0.endTime.toInt()
        }
        
        return filteredArray
    }
    
}
