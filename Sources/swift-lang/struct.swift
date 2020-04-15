//
//  struct.swift
//
//  This module will explore struct types
//
//  Created by Femi Abolaji on 15/04/2020.
//

struct Player {
    var name: String
    var highScore: Int = 0
    var gameHistory: [Int] = []
    
    init(_ name: String) {
        self.name = name
    }
}

extension Player {
    mutating func updateScore(_ newScore: Int) {
        gameHistory.append(newScore)
        
        if newScore > highScore {
            highScore = newScore
            print("The new high score is \(newScore)")
        }
    }
}
