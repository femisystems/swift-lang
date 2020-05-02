//
//  Closure.swift
//  
//
//  Created by Femi Abolaji on 30/04/2020.
//

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


func transformNumbers(numbers: [Int]) -> (([(_ num: Int) -> Int]) -> [Int]) {
    func composeTransformFns(fns: [(_ num: Int) -> Int]) -> [Int] {
        let result = numbers.map({ (number: Int) -> Int in
            var res = number
            for fn in fns {
                res = fn(res)
            }
            return res
        })
        return result
    }
    
    return composeTransformFns
}

