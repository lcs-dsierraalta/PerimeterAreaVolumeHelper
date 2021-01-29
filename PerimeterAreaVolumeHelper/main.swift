//
//  main.swift
//  PerimeterAreaVolumeHelper
//
//  Created by Diego Sierraalta on 2021-01-29.
//

import Foundation

//MARK: Functions

/// Finds the area of a rectangle
/// - Parameter length: length of rectangle
/// - Parameter width: width of rectangle
/// - Returns: area of the rectangle
func areaOfRectangle(length: Double, width: Double) -> Double {
    
    return length * width
    
}

/// Finds the area of a circle
/// - Parameter radius: the straight line from the center of the circle to its outer edge
/// - Returns: area of the circle
func areaOfCircle(radius: Double) -> Double {
    return Double.pi * pow(radius, 2.0)
}


func cylinderSurfaceArea(radius: Double, height: Double) -> Double {
    
}


//MARK: Input
let givenLength = 10.0    //Set to a Double using "type inference" (swift guesses the type)
let givenWidth: Double = 2   //Set to a Double using "type annotation" (tell swift what to do)

//MARK: Process
let area = areaOfRectangle(length: givenLength, width: givenWidth)

//MARK: Output
print("The area is \(area) square units")  //Example of "string interporlation" (print contents of a variable)
