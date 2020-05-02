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
func transformNumbers(numbers: [Int]) -> (([(_ num: Int) -> Int]) -> [Int]) {
    func composeTransformFns(fns: [(_ num: Int) -> Int]) -> [Int] {
        return numbers.map({ (number: Int) -> Int in
            var res = number
            if !fns.isEmpty {
                for fn in fns {
                    res = fn(res)
                }
            }
            return res
        })
    }
    
    return composeTransformFns

}

// typeB uses closure all through
func transformNumbersTypeB(numbers: [Int]) -> (([(_ num: Int) -> Int]) -> [Int]) {
    return ({ (fns: [(_ num: Int) -> Int]) -> [Int] in
        return numbers.map({ (number: Int) -> Int in
            var res = number
            if !fns.isEmpty {
                for fn in fns {
                    res = fn(res)
                }
            }
            return res
        })
    })
}

