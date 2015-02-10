//
//  ViewController.swift
//  BBNSchedule
//
//  Created by Aaron Kaufer on 1/23/15.
//  Copyright (c) 2015 Aaron Kaufer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ABlock: UITextField!
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        var letter : [String] = ["A", "B" , "C", "D", "E", "F", "G"];
        var counter = 0;
        
        if(User.getSavedUsed() != nil){
        var user = User.getSavedUsed()
    
        for index in 0...6 {
            
            var textField = view.viewWithTag(100 + index) as UITextField;
            textField.text = user.blocks[letter[counter]]
            counter++;
        }
        }
        
    }
    
  
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //called when sace button clicked
    @IBAction func SaveInfo(sender: AnyObject) {
        var Letter : [String] = ["A", "B" , "C", "D", "E", "F", "G"];
        var counter = 0;
        
        var user = User.getSavedUsed()
        if(user == nil){
            user = User(name : "Alfred");
        }
        
        for index in 0...6 {
          
          var textField = view.viewWithTag(100 + index) as UITextField;
          user.addString(Letter[counter], BlockName: textField.text)
          user.saveSelf()
          counter++;
        }
        
    }
}

