//
//  Town.swift
//  MonsterTown
//
//  Created by Jay Ockers on 4/15/18.
//  Copyright © 2018 BigNerdRanch. All rights reserved.
//

import Foundation

struct Town{
    static let region = "South"
    var population = 5_422 {
        didSet(oldPopulation){
            print("The population has changed to \(population) from \(oldPopulation)")
        }
    }
    var numberOfStoplights = 4
    
    enum Size{
        case small
        case medium
        case large
    }
    
    var townSize: Size  {
        switch self.population {
        case 0...10_000:
            return Size.small
        case 10_000...100_000:
            return Size.medium
        default:
            return Size.large
        }
    }
    
    func printDescription(){
        print("Population: \(population), number of stoplights: \(numberOfStoplights)")
    }
    
    mutating func changePopulation(by amount: Int){
        population += amount
    }
}
