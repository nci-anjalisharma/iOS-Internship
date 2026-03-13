
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




/* DATE: 27-02-2026
 
 Loops & Conditions
 
1. For loops
2. While Loops
3. Repeat Loops
4. Conditions
5. switch statement
 
 -------
 
 1. Conceptual Understanding
 Loop Types:
 For-in: Best for a predictable number of rounds.
 While: Best for running until a condition changes.
 Repeat-While: Guaranteed to run at least once.
 The Underscore: I used for _ in when I didn't actually need to use the loop variable, which saves memory.

 2. Logic & Implementation
 Task: Creating a countdown timer and a multiplication table.
 Logic: I used Nested Loops to create the multiplication table and Labeled Statements (outerLoop:) to break out of multiple levels of loops at once.
 Switch Power: I used fallthrough in a switch statement to allow "Snow" logic to continue into "Windy" logic.
 
 3. Safety & Edge Cases
 Infinite Loops: I learned that while true will run forever unless it contains a break. This is dangerous if not managed but useful for processes that should always stay "on."
 Filtering Logic: I used continue to skip specific numbers (multiples of 3) without stopping the entire loop.

 
 4. Critical Lessons (The "Fix")
 The Problem: I couldn't figure out how to stop a nested loop from the inside.
 The Solution: I discovered Statement Labels. By naming the loop outerLoop:, I can specifically tell the break command which loop to kill.
 The Lesson: Use switch instead of long if-else chains when checking one variable against many possible values—it’s much more readable.
 
*/

//for-in loop

let numbers = 1...10

for number in numbers {
    print("Number is \(number)")
}

let album = ["Reputation", "Lover", "1989", "Midnight", "Dead Poet Society"]

for albumTitle in album {
    print("The trending album is \(albumTitle)")
}

print("Players gonna")
for _ in 1...5 {
    print("play!")
}


//While loops -check the condition and run the loop
var numberr = 1

while numberr <= 20 {
    print(number)
    number += 1
}


//Repeat loops (Like do-while loops) - runs the loop and checks the condition (the loops runs atleast once even if the condition is false

var numberr2 = 2

repeat {
    print(numberr2)
    numberr2 += 2
} while numberr2 <= 20


//Exiting the loop using break

while number >= 0 {
    print(number)
    
    if number == 4 {
        print("Coundown is over, start!")
        break  //the loop exits from here when the condition is true
    }
    number -= 1
}

//multiple loops

for i in 1...10 {
    for j in 1...10 {
        var product = i*j
        print ("\(i)*\(j) = \(product)")
    }
}

//Exiting multiple loops

outerLoop: for i in 1...10 {
    for j in 1...10 {
        var product = i*j
        print ("\(i)*\(j) = \(product)")
        if product >= 50{
            print("Exceeded limit")
            break outerLoop
        }
    }
}

//Skipping loops using 'continue'

for i in 1...10 {
    if i.isMultiple(of: 3) {
        print("Skipping \(i)")
        continue
    }
    print(i)
}

//INfinite loops

while true {
    //print("Infinite loop
}



//Conditions (if, if-else, if-else-if)

var n = 2
if n%2 == 0 {
    print("The number is even")
} else {
    print("It is odd")
}
 
if n%2 == 0 {
    print("The number is even")
} else if n%2 == 1 {
    print("The number is odd")
} else {
    print("Invalid number")
}




//switch statement - used for conditon checking (like if-else ladder) for multiple cases. fallthrough is used to continue checking the condition in the next case.

let weather = "Windy"

switch weather {
case "Sunny":
    print("Wear sunscreen")
case "Snow":
    print("Carry your jacket and gloves")
    fallthrough
case "Windy":
    print("Stay Home")
default:
    print("Enjoy your day!")
}





