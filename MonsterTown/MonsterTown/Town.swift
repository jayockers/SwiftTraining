//
//  Town.swift
//  MonsterTown
//
//  Created by Jay Ockers on 4/15/18.
//  Copyright © 2018 BigNerdRanch. All rights reserved.
//

import Foundation

struct Town{
    let region: String
    var population: Int {
        didSet(oldPopulation){
            print("The population has changed to \(population) from \(oldPopulation)")
        }
    }
    var numberOfStoplights: Int
    
    init(region: String, population: Int, stoplights: Int){
        self.region = region
        self.population = population
        numberOfStoplights = stoplights
    }
    
    init(population: Int, stoplights: Int)
    {
        self.init(region: "N/A", population: population, stoplights:stoplights)
    }
    
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
        print("Population: \(population), number of stoplights: \(numberOfStoplights), region: \(region)")
    }
    
    mutating func changePopulation(by amount: Int){
        population += amount
    }
}
