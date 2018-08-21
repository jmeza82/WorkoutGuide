//
//  CustomButton.swift
//  WorkoutGuide
//
//  Created by Juan Meza on 12/20/17.
//  Copyright © 2017 Tech-IN. All rights reserved.
//

import UIKit

class CustomButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        //self.backgroundColor = UIColor(red:0.99, green:0.29, blue: 0.34, alpha:1.00)
        self.backgroundColor = appColor
        self.setTitleColor(UIColor.white, for: UIControlState.normal)
        //self.titleLabel?.font = UIFont(name: "HelveticaNeue-CondensedBold", size: 20)
        self.titleLabel?.font = UIFont(name: buttonFont, size: 20)
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
        
        
    }
}
