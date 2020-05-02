//
//  File.swift
//  
//
//  Created by Femi Abolaji on 29/04/2020.
//

import Foundation

/**
 ------------------------------------------------------------------------
 * FOR IN / IF - Looping over a dictionary
 ------------------------------------------------------------------------
 *
 */
func dictionaryLoop() {
    let candidates: Dictionary<String, Int> = [
        "Alice": 90,
        "Daniel": 75,
        "Denice": 40,
        "Clara": 60,
        "James": 50
    ]
    var computedScoreSheet = "";
    
    func printScore(_ name: String, _ score: Int, _ grade: Character) -> String{
        return "\(name)     |     \(score)     |     \(grade)\n"
    }
    
    for (name, score) in candidates {
        if score >= 80 {
            computedScoreSheet += printScore(name, score, "A")
        } else if score >= 70 {
            computedScoreSheet += printScore(name, score, "B")
        } else if score >= 60 {
            computedScoreSheet += printScore(name, score, "C")
        } else if score >= 50 {
            computedScoreSheet += printScore(name, score, "D")
        } else if score >= 40 {
            computedScoreSheet += printScore(name, score, "E")
        } else {
            computedScoreSheet += printScore(name, score, "F")
        }
    }
    
    print("Name     |     Score     |     Grade")
    print(computedScoreSheet)
}

/**
 ------------------------------------------------------------------------
 * SWITCH
 ------------------------------------------------------------------------
 *
 */

func switchUp(gender: String) -> String {
    var greeting: String = ""
    
    switch gender {
    case "female":
        greeting = "Welcome, my lady!"
    case "male":
        greeting = "Welcome, gentle man!"
    default:
        greeting = "Welcome, \(gender)"
    }
    
    return greeting
}
