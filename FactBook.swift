//
//  FactBook.swift
//  FunFacts
//
//  Created by Mathew Spolin on 3/30/15.
//  Copyright (c) 2015 Automatt. All rights reserved.
//

import Foundation

class FactBook {
    
    init() {
        self.currentFact = 0
    }
    
    let factsArray = [
        "Ants stretch when they wake up in the morning.",
        "Ostriches can run faster than horses.",
        "Olympic gold medals are actually made of silver.",
        "You are born with 300 bones; by the time you are an adult you will have 206.",
        "It takes about 8 minutes for the light from the sun to reach Earth.",
        "Some bamboo plants can grow almost a meter in just one day.",
        "Some penguins can leap 2-3 meters out of the water.",
        "The state of Florida is bigger than England.",
        "On average, it takes 66 days to form a new habit.",
        "Mammoths still walked the Earth when the Great Pyramid was being built."
    ]
    
    var currentFact: Int
    
    func randomFact() -> String {
        
        var randomNumber = self.currentFact
        
        while randomNumber == self.currentFact {
            randomNumber = getRandomNumber(factsArray.count)
        }
        
        self.currentFact = randomNumber
        return factsArray[randomNumber]
    }
    
    func getRandomNumber(max: Int) -> Int {
        return Int(arc4random_uniform(UInt32(max)))
    }
}

