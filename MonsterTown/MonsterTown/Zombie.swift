//
//  Zombie.swift
//  MonsterTown
//
//  Created by Jay Ockers on 4/15/18.
//  Copyright © 2018 BigNerdRanch. All rights reserved.
//

import Foundation

class Zombie: Monster{
    var walksWithLimp = true
    final override func terrorizeTown() {
        town?.changePopulation(by: -10)
        super.terrorizeTown()
    }
    
}
