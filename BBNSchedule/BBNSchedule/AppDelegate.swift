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

    var counter = 0;
    
    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        


        application.registerUserNotificationSettings(UIUserNotificationSettings(forTypes: UIUserNotificationType.Sound | UIUserNotificationType.Alert | UIUserNotificationType.Badge, categories: nil))

        
        // Override point for customization after application launch.
        return true
    }

    func application(application: UIApplication, didReceiveLocalNotification notification: UILocalNotification) {
        
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
        
        for day in 0...0{
            
            for blockCounter in 0...(RegularWeeklySchedule.days[day].blocks.count-1) {
                
                block = RegularWeeklySchedule.days[day].blocks[blockCounter]
                
                var oneMinutes = block.startTime%10
                var tenMinutes = (block.startTime - oneMinutes)%100
                var hourOnes = (block.startTime - tenMinutes - oneMinutes)%1000;
                var hourTens = (block.startTime - hourOnes - tenMinutes - oneMinutes)%10000;
                var hours = String(hourTens/1000) + String(hourOnes/100)
                var minutes = String(tenMinutes/10) + String(oneMinutes)
                var timeString : String = hours + ":" + minutes;
                
                var dateNum = 2 + Day;
                
                
                var dateString : String =  "2015-01-28 " + timeString;
                println(dateString);
                
                let formatter = NSDateFormatter()
                formatter.dateFormat = "yyyy-MM-dd HH:mm"
                var date = formatter.dateFromString(dateString)
                //print(date)
                
                let Currentdate = NSDate()
           
             
                var localNotification:UILocalNotification = UILocalNotification()
                localNotification.alertAction = "Blcok"
                localNotification.alertBody = block.description() + " Started";
                localNotification.fireDate = dateMinusFive
                localNotification.soundName = UILocalNotificationDefaultSoundName;
                
                
                localNotification.repeatInterval = .WeekCalendarUnit;

                
                UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
            
                
            }
            
            
        }
            
        

    
        let arrayOfNotifcations = UIApplication.sharedApplication().scheduledLocalNotifications
        
        for hello in arrayOfNotifcations {
            println(hello)
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

