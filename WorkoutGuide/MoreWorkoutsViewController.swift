//
//  MoreWorkoutsViewController.swift
//  WorkoutGuide
//
//  Created by Juan Meza on 12/23/17.
//  Copyright © 2017 Tech-IN. All rights reserved.
//

import UIKit

class MoreWorkoutsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        appDelegate.printValue()
        print(appDelegate.getPlistDict())
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
