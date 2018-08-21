//
//  DetailsViewController.swift
//  WorkoutGuide
//
//  Created by Juan Meza on 12/23/17.
//  Copyright © 2017 Tech-IN. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let appDelegate = UIApplication.shared.delegate as! AppDelegate
        //appDelegate.printValue()
        
        //print(detailsArray)
        //self.view.backgroundColor = UIColor(red:0.99, green:0.29, blue: 0.34, alpha:1.0)
        self.view.backgroundColor = appColor
        
        let imgView = view.viewWithTag(6) as! UIImageView
        let workoutImage = UIImage(named: detailsArray[0])
        imgView.image = workoutImage
        
        imgView.layer.borderWidth = 4.0
        //imgView.layer.borderColor = UIColor(red:0.99, green:0.29, blue: 0.34, alpha:1.0).cgColor
        imgView.layer.borderColor = appColor.cgColor
        
        let descTxtView = view.viewWithTag(7) as! UITextView
        descTxtView.text = detailsArray[1]
        descTxtView.textColor = UIColor.white
        descTxtView.font = UIFont(name:"AvenirNext-Regular", size: 21)
        
        let button = view.viewWithTag(5) as! UIButton
        button.setTitleColor(UIColor.white, for: .normal)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
