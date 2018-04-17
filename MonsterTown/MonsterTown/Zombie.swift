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
    
    var walksWithLimp: Bool
    private(set) var isFallingApart: Bool
    
    init(limp:Bool, fallingApart:Bool, town: Town?, monsterName:String){
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town:town, monsterName: monsterName)
        
    }
    
    convenience init(limp:Bool, fallingApart: Bool){
        self.init(limp: limp, fallingApart: fallingApart, town:nil, monsterName: "Fred")
        if walksWithLimp
        {
            print("This zombie walks with a limp.")
        }
    }
    
    final override func terrorizeTown() {
        if !isFallingApart {
            town?.changePopulation(by: -10)
            
        }
        super.terrorizeTown()
    }
    
}
