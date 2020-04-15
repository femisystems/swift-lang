//
//  types.swift
//
//  This module serves as an introduction to type system in swift.
//
//  [SCOPE]
//  Basic/primitive types, implicit and explicit declarations,
//  variable and constant assignments, type coercion and a bit of
//  type manipulation
//
//  Created by Femi Abolaji on 15/04/2020.
//

/**
 ------------------------------------------------------------------------
 * VAR vs LET
 ------------------------------------------------------------------------
 *
 * VAR
 * Declares types that can be reassigned
 *
 *
 * LET
 * Declares types that can't be reassigned
 *
 * -----------------------------------------------------------------------
 */
func stringTypes() {
    var variableName: String = "femi"
    variableName = "tunde" // -> works fine
    print(variableName)
    
    let constantName = "John"
    // constantName = "Jane" -> throws an error
    print(constantName)
    
    let multilineString: String = """
        By nature, this string breaks into
        multiple lines
    """
    print(multilineString)
}


/**
 ------------------------------------------------------------------------
 * IMPLICIT VS EXPLICIT TYPING VS TYPECASTING
 ------------------------------------------------------------------------
 *
 * IMPLICIT TYPING
 * Value types are inferred at compile time
 *
 * EXPLICIT TYPING
 * Value types are assigned during declaration
 *
 * TYPE-CASTING
 * Value are coerced into a type different from their original type
 *
 * -----------------------------------------------------------------------
 */
func numberTypes() {
    let implicitNumber = 5
    print(implicitNumber)
    
    let explicitNumber: Double = 67.2
    let newExplicit: Int = Int(explicitNumber)
    print(newExplicit)
}


/**
 ------------------------------------------------------------------------
 * ARRAYS AND DICTIONARIES
 ------------------------------------------------------------------------
 *
 */
func arraysAndDicts() {
    let _: [String] = ["Ferrari", "Alpha Romeo", "Aston Martin", "Bugatti Veyron"]
    let carModels: [String: [String]] = [
        "Mercedes": ["AMG 60", "Compressor", "GL 60"],
        "Lambourghini": ["Gallardo", "Urus"],
        "Tesla": ["Model 2", "Model 3"]
    ]

    let model1 = String(carModels["Tesla"]?[0] ?? "")
    
    print(model1)
}
