
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


/*
 
 DATE: 03-04-2026
 
 Topics covered here are the following:
 1. Arrays
 2. Sets
 3. Tuples
 4. Dicitonaries
 5. Enums
 
Operators
 
 6. Operators (Arithemetic, compound assignment, comparison, terinary, range)
 
 -----------------
 
 1. Conceptual Understanding
 Collection Choice:
 Arrays: Ordered, allows duplicates. Used for lists where position matters.
 Sets: Unordered, unique values only. High performance for checking if an item exists.
 Dictionaries: Key-value pairs. Best for "lookups" (e.g., finding a score by a name).
 Tuples: Fixed-size "bundles" of different data types. Unlike Arrays, I can't add more items once created.

 
 2. Logic & Implementation
 Task: Managing fruit lists and student scores.
 Logic: I used Operator Overloading to combine arrays using the + operator and Compound Assignment (+=) to append strings and add to marks.
 Enums: I used Enums with Associated Values (e.g., Activity.Cooking(Food: "Salad")) to pass extra data along with a category.
 
 
 3. Safety & Edge Cases
 Dictionary Nil Safety: I learned that accessing a dictionary returns an Optional. I used the Nil-Coalescing Operator (??) and the default: parameter to prevent the app from crashing if a key doesn't exist.
 Range Safety: I used 0...30 for closed ranges and 31..<50 for half-open ranges to ensure no numbers were accidentally skipped in my switch statements.

 
 4. Lessons
 The Problem: My Set wasn't keeping the order of the colors I put in.
 The Solution: I realized that's the point of a Set. It trades order for speed and uniqueness.
 The Lesson: Use Tuples for temporary, small groups of data and Enums for fixed lists of choices to prevent typos.
 
 */


import UIKit


//Arrays are collection of data of same types. Enclosed within [], indexes start from 0.  -Use for precise position and name

let red = "Apple"
let yellow = "Banana"
let green = "Guava"
let orange = "Mango"

let fruits = [red,yellow,green,orange]
print(fruits)

print(fruits[1])


//Sets - They're unordered collections of values and only contain unique values -Use when order of the items matters the least

var colors = Set(["red","blue", "green", "grey", "red"])


//Tuples - Cannot add or remove items from them (fixed in size), created within '()'. The items can be of different data types -Use when you need fixed collections of related items

var name = (firstnName : "Sam", lastName: "Johnson", age: 27)
print(name.0) //accesing tuples
print(name.lastName)
print(name.age)


//Dictionaries are collection of key-pair values, they are within '[]'

var score = ["Sam": 80, "John": 90, "Chris": 75]
print(score["John"])    //Gives a warning (use optionals to avoid crashing)
print(score["Sam"] ?? 0)

score["Johnson", default: 0]


//Creating empty collections

var emptyArray: [String] = []
var emptySet: Set<String> = []
var emptyDictionary: [String: Int] = [:]


var dictionary: [String: Int] = [:]
var array: [Int] = []
var set: Set<String> = []
var tuple = [Int]()


//Enums are a way of defining groups of related values in a way that makes them easier to use

enum Result {
    case Failure
    case Success
}

var result1 = Result.Failure

enum Error {
    case IndexOutOfBoundError
    case SyntaxxError
}

enum Activity {
    case Running(Destination: String)
    case Talking(Topic: String)
    case Cooking(Food: String)
}
var currentActivity = Activity.Cooking(Food: "Salad")


enum Planets : Int {
    case Mercury
    case Venus
    case Earth
}

var myPlanet = Planets(rawValue: 3)
print(myPlanet ?? "Unknown Planet") //Using Optionals


//  Arithmetic Operator

var number1 = 3
var number2 = 5
var sum = number1 + number2

var difference = number1 - number2
var quotient = number1/number2
var remaindar = number1 // number2

//Operator overloading

var Lastname = "Smith"
var fullName = "Sam" + " " + Lastname

print(fullName)

var listName1 = ["Banana", "Chocolate", "Kiwi", "Yogurt"]
var listName2 = ["Cocoa powder", "Choco chips", "Strawberry"]

var finalList = listName1 + listName2


//Compound assignment operator
var marks = 95
marks -= 5

var MorningGreeting = "Hello, this is a great morning in "
MorningGreeting += "Spain"


//Comparison operator

number1 == number2
number1 > number2
number1 != number2
number2 <= number2




//Range operators

switch marks {
case 0...30:  //Include the last value
    print("Failed")
case 31..<50: //Don't include the last value
    print("2nd class")
case 51...75:
    print("First class")
case 85...100:
    print("Distinction")
default:
    print("Invalid")
}


//ternary operator - used to check the condition and execute a statement/print function (like if-else) in a single statement. Condition + True/False block

print(number1 == number2 ? " The numbers are same" : "The numbers are not same")
