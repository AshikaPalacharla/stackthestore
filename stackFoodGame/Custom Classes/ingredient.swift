//
//  ingredient.swift
//  stackFoodGame
//
//  Created by Michael Hayes on 5/11/20.
//  Copyright © 2020 Michael Hayes. All rights reserved.
//

import Foundation
import UIKit

class Ingredient {
    
    var image: UIImageView
    var name: String
    var inStack: Bool
    var gravity: CGPoint
    var location: CGPoint
    var isPastMiddle: Bool
    
    init(name: String, image: UIImageView, inStack: Bool, gravity: CGPoint, location: CGPoint, isPastMiddle: Bool) {
        self.image = image
        self.name = name
        self.inStack = inStack
        self.gravity = gravity
        self.location = location
        self.isPastMiddle = isPastMiddle
    }
    
}
