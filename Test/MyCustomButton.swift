//
//  BorderButton.swift
//  Test
//
//  Created by Julien Bouquillon on 10/05/2016.
//  Copyright © 2016 synchronized. All rights reserved.
//

import Foundation
import UIKit

class MyCustomButton: UIButton {
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.layer.cornerRadius = 5.0;
        self.layer.borderColor = self.tintColor.CGColor // UIColor.redColor().CGColor
        self.layer.borderWidth = 1
        //self.backgroundColor = UIColor.blueColor()
        //self.tintColor = UIColor.whiteColor()
        
    }
}

