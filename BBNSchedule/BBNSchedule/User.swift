//
//  User.swift
//  BBNSchedule
//
//  Created by Aaron Kaufer on 1/23/15.
//  Copyright (c) 2015 Aaron Kaufer. All rights reserved.
//

import UIKit

class User: NSObject {
   
    var name: String = ""
    var blocks: [String: String] = [:]
    
    init(name: String, blocks: [String: String]) {
        self.name = name
        self.blocks = blocks
    }
    
    class func isUserSaved() -> Bool {
        var defaults = NSUserDefaults.standardUserDefaults()
        var isUserSaved: Bool = defaults.boolForKey("isUserSaved")
        return isUserSaved
    }
    
    func saveSelf(){
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setBool(true, forKey: "isUserSaved")
        defaults.setObject(name, forKey: "userName")
        defaults.setObject(blocks, forKey: "userBlocks")
        defaults.synchronize()
    }
    
    class func getSavedUsed() -> User {
        var defaults = NSUserDefaults.standardUserDefaults()
        var userName: String = defaults.objectForKey("userName") as String
        var userBlocks: [String: String] = defaults.objectForKey("userBlocks") as [String: String]
        var user = User(name: userName, blocks: userBlocks)
        return user;
    }
    
    
    
}
