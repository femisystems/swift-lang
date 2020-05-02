//
//  main.swift
//
//  This is the entry point into the application and it
//  mainly serves the purpose of testing for other modules.
//  Since types are globally accessible in swift, there won't
//  be an explicit importation of modules.
//
//  Created by Femi Abolaji on 15/04/2020.
//

// create transformers
let addFive = addFuncGenerator(factor: 5)
let multiplyByThree = multiplyFuncGenerator(factor: 3)

// sample data
let data = [8, 9, 3, 1, 2, 4]
let transformers = [addFive, multiplyByThree]

// pass transformers to composer

// Test case 1 :: ([]) -> [original data]
let testCase1 = transformNumbers(numbers: data)([])
print("Test case 1: \(testCase1)")

// Test case 2 :: (transformers) -> [transformed data]
let testCase2 = transformNumbers(numbers: data)(transformers)
print("Test case 2: \(testCase2)")
