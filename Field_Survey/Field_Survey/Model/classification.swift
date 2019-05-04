//
//  classification.swift
//  Field_Survey
//
//  Created by Alex Davis on 5/3/19.
//  Copyright © 2019 Alex Davis. All rights reserved.
//

import UIKit

enum Classification: String {
    case bird
    case reptile
    case plant
    case mammal
    case insect
    case fish
    case amphibian
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
