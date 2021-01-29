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


/// Finds the surface area of a cylinder
/// - Parameters:
///   - radius: the straight line from the center of the base to its outer edge
///   - height: the height of the cylinder
/// - Returns: surface area fo the cylinder
func cylinderSurfaceArea(radius: Double, height: Double) -> Double {
    return 2 * Double.pi * pow(radius, 2.0) + 2 * Double.pi * radius * height
}


//MARK: Input
let givenLength = 10.0    //Set to a Double using "type inference" (swift guesses the type)
let givenWidth: Double = 2   //Set to a Double using "type annotation" (tell swift what to do)

print("Hi, I am a surface area helper")
print("What shape do you want to work with?")
print("1 - Cylinder")
print("2 - Sphere")
print("3 - Cone")
print("4 - Squared-based pyramid")
print("5 - Rectangular prism")
print("6 - Triangular prism")
print("Enter your choice (1/2/3/4/5/6):")

//MARK: Process
let area = areaOfRectangle(length: givenLength, width: givenWidth)

//MARK: Output
print("The area is \(area) square units")  //Example of "string interporlation" (print contents of a variable)
