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
let result = transformNumbers(numbers: data)(transformers)
print(result)
