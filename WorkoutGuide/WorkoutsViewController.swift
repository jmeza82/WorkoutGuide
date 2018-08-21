//
//  WorkoutsViewController.swift
//  WorkoutGuide
//
//  Created by Juan Meza on 12/20/17.
//  Copyright © 2017 Tech-IN. All rights reserved.
//

import UIKit

var detailsArray = [String]()

class WorkoutsViewController: UIViewController {

    var workoutDict = [String: [String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let appDelegate = UIApplication.shared.delegate as! AppDelegate
        //appDelegate.printValue()
        
        self.title = "Choose Workout"
        
        let path = Bundle.main.path(forResource: "Workouts", ofType: "plist")
        
        
        if let validPath = path {
            let dict = NSDictionary(contentsOfFile: validPath)
            
            if let valueDict = dict {
                
                workoutDict = valueDict as! [String: [String]]
                
                print(valueDict)
                let titleArrays = valueDict.allKeys
                
                let allView = view.subviews
                
                //for singleView in allView {
                for i in 0..<allView.count{
                    
                    // Using subviews
                    //if singleView is UIButton {
                    // Using tag
                    //if singleView.tag == 10 {
                    if allView[i].tag == 10 {
                        
                        //let button = singleView as! UIButton
                        let button = allView[i] as! UIButton
                        
                        //button.backgroundColor = UIColor(red: 0.99, green:0.29, blue:0.34, alpha:1.0)
                        button.setTitle(titleArrays[i] as? String, for: UIControlState.normal)
                        //button.setTitleColor(UIColor.white, for: .normal)
                        //button.setTitleColor(UIColor(red: 0.99, green:0.29, blue:0.34, alpha:1.0), for: .normal)
                        button.setTitleColor(appColor, for: .normal)
                        //button.titleLabel?.font = UIFont(name: "HelveticaNeue-CondensedBold", size:20)
                        button.titleLabel?.font = UIFont(name: buttonFont, size:20)
                        //button.layer.borderColor = UIColor(red: 0.99, green:0.29, blue:0.34, alpha:1.0).cgColor
                        button.layer.borderColor = appColor.cgColor
                        button.layer.borderWidth = 2.5
                        button.layer.cornerRadius = 5
                        button.clipsToBounds = true
                        
                        // Call function when click any button
                        button.addTarget(self, action: #selector(WorkoutsViewController.goToDetails(sender:)), for: .touchUpInside)
                    }
                    
                }
            }
        }
        
        
        
        
       /*
        
        */
    }
    
    @objc func goToDetails(sender: UIButton) {
        
        if let title = sender.titleLabel?.text, let array = workoutDict[title] {
            
            //print(title)
            //print(array)
            detailsArray = array
            performSegue(withIdentifier: "details", sender: self)
        }
        
    }
    
    @IBAction func close(segue: UIStoryboardSegue){
        
    }

    

}
