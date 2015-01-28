//
//  AppDelegate.swift
//  BBNSchedule
//
//  Created by Aaron Kaufer on 1/23/15.
//  Copyright (c) 2015 Aaron Kaufer. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        


        application.registerUserNotificationSettings(UIUserNotificationSettings(forTypes: UIUserNotificationType.Sound | UIUserNotificationType.Alert | UIUserNotificationType.Badge, categories: nil))

        
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.

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
                var date = formatter.dateFromString(timeString)
                
                
                var localNotification:UILocalNotification = UILocalNotification()
                localNotification.alertAction = "Block"
                localNotification.alertBody = block.description() + " Started";
                localNotification.fireDate = date
                UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
                
                
                
                
            }
            
            
        }

    
        
        
        
        
        
        
     
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

