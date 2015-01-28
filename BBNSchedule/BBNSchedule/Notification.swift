//
//  Notification.swift
//  BBNSchedule
//
//  Created by Vishnu Murale on 1/27/15.
//  Copyright (c) 2015 Aaron Kaufer. All rights reserved.
//

import UIKit

class Notification: NSObject {

    
    override init() {
      
    }
    
    
    
    func makeNotifcations() -> [UILocalNotification]{
        
        var notifications : [UILocalNotification] = [];
        
        var block : Block;
        
        initRegularWeeklySchedule()
      
        for Day in 0...0{
            
            for BlockCounter in 0...(RegularWeeklySchedule.days[Day].blocks.count-1) {
              
              block = RegularWeeklySchedule.days[Day].blocks[BlockCounter]
                
                var OneMinutes = block.startTime%10
                var tenMinutes = (block.startTime - OneMinutes)%100
                var HourOnes = (block.startTime - tenMinutes - OneMinutes)%1000;
                var HourTens = (block.startTime - HourOnes - tenMinutes - OneMinutes)%10000;
                var Hours = String(HourTens/1000) + String(HourOnes/100)
                var Minutes = String(tenMinutes/10) + String(OneMinutes)
                var TimeString : String = Hours + ":" + Minutes;
              
               
                
                var timeString : String =  "2015-01-28 " + TimeString;
                println(timeString);
                let formatter = NSDateFormatter()
                formatter.dateFormat = "yyyy-MM-dd HH:mm"
                formatter.timeZone = NSTimeZone(abbreviation: "GMT");
                let date = formatter.dateFromString(timeString)
               

                var localNotification:UILocalNotification = UILocalNotification()
                localNotification.alertAction = "Block"
                localNotification.alertBody = block.description() + " Started";
                localNotification.fireDate = date;
                
                
                
                notifications.append(localNotification);
           
                
                // UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
  
                
                
              
            }
            
            
        }
  
        return notifications
        
    
 
        
    
    }
    
   
}
