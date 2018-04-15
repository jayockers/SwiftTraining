//
//  Zombie.swift
//  MonsterTown
//
//  Created by Jay Ockers on 4/15/18.
//  Copyright © 2018 BigNerdRanch. All rights reserved.
//

import Foundation

class Zombie: Monster{
    override class var spookyNoise: String{
        return "Brains..."
    }
    
    var walksWithLimp = true
    private var isFallingApart = false
    
    final override func terrorizeTown() {
        if !isFallingApart {
            town?.changePopulation(by: -10)
            
        }
        super.terrorizeTown()
    }
    
}
