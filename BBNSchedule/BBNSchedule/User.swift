//
//  User.swift
//  BBNSchedule
//
//  Created by Aaron Kaufer on 1/23/15.
//  Copyright (c) 2015 Aaron Kaufer. All rights reserved.
//

import UIKit

let userNameKey: String = "userName"
let isUserSavedKey: String = "isUserSaved"
let userBlocksKey: String = "userBlocksKey"

class User: NSObject {
   
    //
    
    var name : String = ""
    var blocks : [String: String]
    
    init(name: String) {
        self.name = name
        blocks = ["A": "", "B": "", "C": "","D": "", "E": "", "F": "","G": ""]
    }
    
     func addString (Key : String , BlockName : String) {
        

        blocks[Key] = BlockName
        
    }
    
        
    class func isUserSaved() -> Bool {
        var defaults = NSUserDefaults.standardUserDefaults()
        var isUserSaved: Bool = defaults.boolForKey(isUserSavedKey)
        return isUserSaved
    }
    
    class func removeUser(){
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setBool(false, forKey: isUserSavedKey)
    }
    func saveSelf(){
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setBool(true, forKey: isUserSavedKey)
        defaults.setObject(name, forKey: userNameKey)
        defaults.setObject(blocks, forKey: userBlocksKey)
        defaults.synchronize()
    }
    
    class func getSavedUsed() -> User! {
        var defaults = NSUserDefaults.standardUserDefaults()
        if(!defaults.boolForKey(isUserSavedKey)){
            return nil
        }
        
        var userName: String = defaults.objectForKey(userNameKey) as String
        var userBlocks: [String: String] = defaults.objectForKey(userBlocksKey) as [String: String]
        var user = User(name: userName)
        return user
    }
    
    
    
    
}
