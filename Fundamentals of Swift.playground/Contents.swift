
/*

DATE: 26-02-2026

Revision:
1. Basic operators
2. Data types
3. Variables and constants
4. Type inference
5. String interpolation

 
 1. Conceptual Understanding
 
Mutability: I learned to default to let (constants) and only use var (variables) when I explicitly need to change a value. This makes the code more predictable.
Type Inference vs. Annotation: Swift is smart enough to know that "Sam" is a String (inference), but I used Type Annotation (var attempts: Int) when I wanted to declare a variable without an immediate value.
String Interpolation: I used \() to dynamically inject values into strings, which is much cleaner than traditional string concatenation.
 
 2. Logic & Implementation
 Task: Setting up a player profile system.
 Logic: I used different integer types (UInt8, Int32) to understand memory limits. I used multi-line strings (""") to handle long profile descriptions without manual line breaks.
 Type Safety: I tested Swift's strictness by trying to assign a String to an Int variable and confirmed it results in a compile-time error.

 
 3. Safety & Edge Cases
Bounds: I learned that using .min and .max helps identify the limits of numeric types to prevent "overflow" crashes.
Initialization: Swift prevents me from using a variable like attempts before I give it a value, which is a key safety feature.

 
 4. Lessons
The Problem: I was confused about when to use Double vs Int.
The Solution: I realized that even if a score is 100, if it can have a decimal later, it must be a Double from the start.
The Lesson: Once a type is inferred (like number = 8), it is locked forever. Swift is "Type Safe."
 
*/



import UIKit

//Declaring variables using 'var' and constants using 'let'

let player_name = "Sam"
var player_age = 35

//data types are of Int, String, Double (floating point values) and Bool(true/false) types.
var player_score = 100.0
var is_playing = true

var attempts: Int //it has no value yet (Type annotation : declaring a variable or constant without initialization but specifying the data type it accepts.

//Use '\()' to insert constant or variable values - String interpolation
print("Hello \(player_name), your current age is \(player_age)")


//multi-line string
var player_description = """
    This is the player's detailed description and can be used for his professional profile summary
    It includes all details of the player
    """

//using min max properties

var least_score = UInt8.min //8 bit unsigned integer
var maximum_score = Int32.max //32 bit signed integer


//Type inference (The first value becomes the variable's type and cannot be changed)
var number = 8
//shows error number = "Apple"



