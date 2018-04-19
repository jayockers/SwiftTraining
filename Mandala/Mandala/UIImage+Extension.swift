//
//  UIImage+Extension.swift
//  Mandala
//
//  Created by Jay Ockers on 4/19/18.
//  Copyright © 2018 Jay Ockers. All rights reserved.
//

import UIKit

extension UIImage {
    convenience init(resource: ImageResource){
        self.init(named: resource.rawValue)!
    }
}

enum ImageResource: String {
    case angry
    case confused
    case crying
    case goofy
    case happy
    case meh
    case sad
    case sleepy
}
