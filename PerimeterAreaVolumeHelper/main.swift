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


/// Finds the surface area of a sphere
/// - Parameter radius: straight line from the center of the sphere to its outer edge
/// - Returns: Surface area of the sphere
func sphereSurfaceArea(radius: Double) -> Double {
    return 4 * Double.pi * pow(radius, 2.0)
}


/// Finds the surface area of a cone
/// - Parameters:
///   - radius: the straight line from the center of the base to its outer edge
///   - slant: the length of the incline from the tip of the cone to the base
/// - Returns: surface area of the cone
func coneSurfaceArea(radius: Double, slant: Double) -> Double {
    return Double.pi * pow(radius, 2.0) + Double.pi * radius * slant
}


/// Finds surface area of a square pyramid
/// - Parameters:
///   - base: the length of a side of the base
///   - slant: the length of the incline form the tip of the pyramid to the base
/// - Returns: surface area of the square pyramid
func squarePyramidSurfaceArea(base: Double, slant: Double) -> Double {
    return pow(base, 2.0) + 2 * base * slant
}

/// Finds surface area of a rectangluar prism
/// - Parameters:
///   - length: length of the base
///   - width: width of the base
///   - height: height of the prism
/// - Returns: surface area of the rectangular prism
func rectangularPrismSurfaceArea(length: Double, width: Double, height: Double) -> Double {
    return 2 * (width * height + length * width + length * height)
}


//MARK: Input
//let givenLength = 10.0    //Set to a Double using "type inference" (swift guesses the type)
//let givenWidth: Double = 2   //Set to a Double using "type annotation" (tell swift what to do)

//Show menu and choices
print("Hi, I am a surface area helper")
print("What shape do you want to work with?")
print("")
print("1 - Cylinder")
print("2 - Sphere")
print("3 - Cone")
print("4 - Squared-based pyramid")
print("5 - Rectangular prism")
print("6 - Triangular prism")
print("")
print("Enter your choice (1/2/3/4/5/6):", terminator: "")

//Get selection
let choice = readLine()!
print("")

//Ask correct secondary questions
switch choice {
case "1" :
    //Input
    print("You have chosen cylinder")
    print("")
    print("Enter radius:", terminator: "")
    let givenRadius = Double(readLine()!)!
    print("Enter height:", terminator: "")
    let givenHeight = Double(readLine()!)!
    //Process
    let result = cylinderSurfaceArea(radius: givenRadius, height: givenHeight)
    //Output
    print("The surface area of the cylinder is \(result) square units")
    
case "2" :
    //Input
    print("You have chosen sphere")
    print("")
    print("Enter radius:", terminator: "")
    let givenRadius = Double(readLine()!)!
    //Process
    let result = sphereSurfaceArea(radius: givenRadius)
    //Output
    print("The surface area of the sphere is \(result) square units")
    
case "3" :
    //Input
    print("You have chosen cone")
    print("")
    print("Enter radius:", terminator: "")
    let givenRadius = Double(readLine()!)!
    print("Enter length of slant:", terminator: "")
    let givenSlant = Double(readLine()!)!
    //Process
    let result = coneSurfaceArea(radius: givenRadius, slant: givenSlant)
    //Output
    print("The surface area of the sphere is \(result) square units")
    
case "4" :
    //Input
    print("You have chosen squared-based pryamid")
    print("")
    print("Enter length of base:", terminator: "")
    let givenBase = Double(readLine()!)!
    print("Enter length of slant:", terminator: "")
    let givenSlant = Double(readLine()!)!
    //Process
    let result = squarePyramidSurfaceArea(base: givenBase, slant: givenSlant)
    //Output
    print("The surface area of the sphere is \(result) square units")
    
default:
    print("Enter a valid selection next time")
}


//MARK: Process
//let area = areaOfRectangle(length: givenLength, width: givenWidth)

//MARK: Output
//print("The area is \(area) square units")  //Example of "string interporlation" (print contents of a variable)
