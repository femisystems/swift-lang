//
//  File.swift
//  
//
//  Created by Femi Abolaji on 30/04/2020.
//

import Foundation

/**
 ------------------------------------------------------------------------
 * CLOSURES :: Functions as first class citizens
 ------------------------------------------------------------------------
 *
 * Functions can be passed into (argument) or received from (return value) another function
 *
 */
func multiplier(factor: Int) -> ((_ num: Int) -> Int) {
    func multiplyBy(num: Int) -> Int {
        return num * factor
    }
    return multiplyBy
}

func giantClosure() {
    func isOdd(_ num: Int) -> Bool {
        return num % 2 == 1
    }
    
    func isEven(_ num: Int) -> Bool {
        return num % 2 == 0
    }
    
    func isPrime(_ num: Int) -> Bool {
        var isPrime = true
        for index in 2...num {
            if num % index == 0 {
                isPrime = false
            } else {
                isPrime = num > 1
            }
        }
        return isPrime
    }
    
    func numberAnalyser(numbers: [Int]) {
        var oddPrime: [Int] = []
        var evenPrime: [Int] = []
        var notPrime: [Int] = []
        
        for num in numbers {
            if isPrime(num) {
                if isOdd(num) {
                    oddPrime.append(num)
                } else {
                    evenPrime.append(num)
                }
            } else {
                notPrime.append(num)
            }
        }
        
        print("odd Primes: \(oddPrime)")
        print("even Primes: \(evenPrime)")
        print("not primes: \(notPrime)")
        
    }
    
    numberAnalyser(numbers: [2,4,5])
}
