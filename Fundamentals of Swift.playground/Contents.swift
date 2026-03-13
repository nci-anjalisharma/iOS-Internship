
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



/*
DATE: 5th & 6th March - 2026
 
Topics covered here -
 1. Functions
 2. Closures
 
 
1. Conceptual Understanding
 Function: Functions are units of logic that can return data, handle errors, and modify external variables. They are a block of code that is used to perform a repetitive task.

 Closure: I discovered that closures are effectively "stored logic." Unlike functions, they don't require parameter labels when called. They are like anonymous functions.

 Higher-Order Logic: I moved from simple functions to those that accept closures as parameters. This allows for "deferred execution" that means defining what to do now, but letting the function decide when to do it.
 
 */


//Writing functions

func printHelp() {
    let message = """
        This is a Help message sent out to all the ships in the vicinity! SOS!
        """
    print(message)
}

printHelp()


//Funtions with parameters
func greeting(Name: String){
    let greet = "Hello, \(Name). Welcome to the Pirates academy!"
    print(greet)
}
greeting(Name: "Samuel")


//Functions with parameter and return type
func greet(Name: String) -> String {
    let greet = "Hello, \(Name). Welcome to the academy!"
    return greet
}
greet(Name: "John")

//Parameter labels (internal and external names)
func greeet(to name: String) {
    let vaar = "Hellooooooo \(name)!!!"
    print(vaar)
}
greeet(to: "Rosie")


//Omitting parameter labels using '_'

func greeeet(_ name: String) -> String{
    let greet = "Hello \(name), this is your first task!"
    return greet
}

greeeet("Shreya")


//Default parameters - here the bool value is true hence it becomes the default unless function is called explicity specifying false

func specialGreet(person: String, nicely: Bool = true){
    if nicely == true {
        print("Welcome \(person)! It is so great to see you!")
        
    } else{
        print("Oh no, its \(person) again! Go away! You are not invited!")
    }
}
specialGreet(person: "Anil", nicely: true)
specialGreet(person: "Anuj", nicely: false)


//Variadic functions - functions that accept any number of parameters of the same type
//Here Int... possibly ranges from 0 to hundreds and it creates an array for the values and we can use loops or conditions easily

func square(numbers: Int...){
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 1,2,3,4,5,6,7,8)  //while passing arguments, use commas to seperate multiple arguments




//Throwing functions creation
//creating an enum - a group of related values stored together for avoiding spelling error or similar errors.
enum PasswordError: Error {
    case Obvious
    case TooShort
    case CharacterSetMismatch
}

func CheckPassword(_ Password: String) throws -> Bool {
    if Password == "password" {
        throw PasswordError.Obvious
    }else if Password.count < 4 {
        throw PasswordError.TooShort
    }
    return true
}

//Use do try-catch block to handle errors gracefully for functions (arguments) that may cause error otherwise app will crash
do {
    try CheckPassword("Aooee")
    print("Password works")
} catch {
    print("You cannot use that password! Choose another!")
}


//inout parameters are used for when values of the parameters (variables) can change inside the function. This is used because parameters are constants and their value cannot be changed.
//inout the reference of the variable is copied along with the initial value assigned.

func DoubleValue (number: inout Int){
    number *= 2
}
var num = 8
DoubleValue(number: &num)



//Closures are functions without a name
//Here we created a fucntion and assigned to variable driving.

let driving = {
    print("You are driving now!")
}
driving()

//We can accept parameters using 'in'. Anything before 'in' can be written as parameter of a regular function that is followed by the content of the function

let riding = { (Name: String, destination: String) in
    print("\(Name) is riding to \(destination)")
    
}
riding("Amul", "Bangalore") //we do not use parameter labels in closure

//Returning from a closure

let RidingWithReturn = { (place: String) -> String in
    return "This place is \(place)"
    
}

RidingWithReturn("Mumbai")


func travel(driving: () -> Void){
    driving()
    print("This is first action")
    driving()
    print("This is second action")
    
}

//trailing closure because in our function the last parameter was a closure

travel() {
    print("\nI'm ready to drive\n")  //replaces the driving()
}

//Using closures as parameters when they accept a parameter

func TravelTuesday(riding: (String) -> String){
    print("We are travellers of Tuesdays")
    riding("Anmol")
    return print("This is going to be an amazing day")
}

 TravelTuesday { (Name: String) in
    "\(Name) is riding to the moon"
}

func garden(seeds: (String) -> String) {
    print("This season we are going to plant lots of seeds!")
    let fruit =  seeds("Chilli")
    print(fruit)
    print("Its going to give a lot of fruits")
}

garden { (seed: String) -> String in
    return "We are planting \(seed) this season"
}

garden{ place in
    "We are going to sell \(place) this season!!!"  //We can also write it like this to make the syntax short and neat
}




/*
-------
DATE : 10-03-2026 & 11-03-2026
 
Revision: Advanced Closures & Struct Fundamentals
 
 1. Conceptual Understanding
 Closure Versatility:
 I learned that closures are Reference Types. They can be passed into functions, stored in variables, and even returned from functions like a "logic factory."
 Structs as Blueprints: I started building my own data types using Structs. Unlike closures, Structs are Value Types, meaning they are copied when passed around, which ensures dat
 isolation.
 Property Observers & Computation: I moved beyond simple storage to Computed Properties (logic-based values) and Property Observers (didSet), which allow the code to react instantly when a value changes.

 
 2. Logic & Implementation
 Task: Simulating network requests, image downloads, and managing bank/population data.
 Multi-Parameter Closures: I implemented closures that accept multiple arguments (e.g., (String, Int) -> String). I used shorthand $0, $1 to access these without naming them.
 Callback Architecture: In fetchUserData and imageDownloader, I used closures as "completion handlers." The function does the work, then "calls back" with success or failure data.
 Mutating Methods: I learned that since Structs are value types, their internal properties cannot be changed by their own functions unless the function is explicitly marked with the mutating keyword.
 
 
 3. Safety & Edge Cases
 Immutability Safety: I discovered that if a Struct instance is declared with let, I cannot call its mutating methods, even if the method itself is valid. This enforces strict data safety.
 Failure Handling: In my network simulations, I provided an onFailure closure. This ensures the app has a specific logical path to follow if a "404 Error" occurs, preventing a silent failure.
 String & Array Safety: I practiced using .hasPrefix() and .firstIndex(of:), which safely check for data existence rather than assuming it's there and risking a crash.
 
 
 4. Critical Lessons
 The Problem: I struggled with closures that return closures—the "function within a function" logic.
 The Solution: I realized that calling the first function just "unwraps" the package. I have to assign that result to a variable and then call that variable like a function to execute the final logic.
 The Lesson: Structs are for Data (state); Closures are for Action (behavior). Use didSet when you want to automate UI updates every time a variable like percentage is updated.

 */


// Closures with multiple parameters. Here it accepts String and Int type parameters for which 'Dublin' and 56 are the arguments passed.

func place(destination: (String, Int) -> String) {
    print("Today we are going to Scotland")
    let placeName = destination("Dublin", 56)
    print(placeName)
    print("This is going to be an amazing trip!")
}

place {
    "I'm going to \($0) with \($1) euros in my pocket!"
}


//Returning closures from functions

func travell() -> (String) -> Void {
    return {
        "I'm going to \($0) on Tuesday"  //a function returning a function (closure)
        
    }
}
    
let result = travell()  //result is now a callable function
result("Birmingham") //'Birmingham' is passed as an argument in the result function



//More closure practice... (Because it it kinda unclear to me, especially closures being used as a parameter in a function while having its own parameters)

//Closures are variables that perform a task, they can be passed and returned to and from a function like String or Int type variables
//Closure are reference types


func fetchData (source: String, onComplete: (String) -> Void) {
    print("Connecting to \(source)...") //There could be a delay here
    
    let data = "Data is received! Here is your data."
    
    onComplete(data)  //Calling the closure once we have the data
}

//Using the closure

fetchData(source: "google.com") { result in
        print("The app recieved this: \(result)")
}


//Name sorting

let names = ["Apple", "Samsung", "Google", "Blackberry", "Nokia"]

let sortedName = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1.count > s2.count
    
})

print(sortedName)


//Network Request

func fetchUserData(userID: Int, onSuccess: (String) -> Void, onFailure: (String) -> Void) {
    print("Connecting the server to the User with ID \(userID)...")
    
    let network = false
    
    if network {
        let profileName = "Sherlock Homes"
        onSuccess(profileName)    //calling the closure
    } else {
        onFailure("Error 404 - User Not Found!")
    }
}

//Using the closures

fetchUserData(userID: 564) { name in
    print("Welcome \(name)! Here is your dashboard.")
    
} onFailure: { ERROR in
    print("Alert! \(ERROR) Please check your internet connection!")
}

//Image downloader

func imageDownloader (imageID: Int, onProgress : (Double) -> Void, onCompletion : (String, Bool) -> Void) {
    print("Connecting to the server for image \(imageID)...")
    
    onProgress(0.7)
    
    let imageName = "Sunset.png"
    let status = true
    
    onCompletion(imageName, true)  //calling the closure
}

//Using the closure

imageDownloader(imageID: 475) { percent in
    print("The image is downloading with a progress of \(percent * 100) percent")
} onCompletion: { name, status in
    if status {
        print("Image \(name) download was successful")
    } else {
        print("Image download failed!")
    }
}


//structs - structures that let us define our own data type

struct Sports {
    var name: String  //name is store property because it stores a value
}


//creating an instance of the struct Sports
var tennis = Sports(name: "Tennis")

print(tennis.name)


//Computed values in structs

struct Sport {
    var name: String
    var isOlympicSports: Bool
    
    //computed value
    var olympicStatus: String {
        if isOlympicSports {
            return("\(name) is an Olympics sport")
            
        } else {
            return ("\(name) is not an Olympics sport")
        }
    }
}

let chess = Sport(name: "Chess", isOlympicSports: false)
print(chess.olympicStatus)


//Using 'didSet' property

struct Progress {
    var task: String
    var percentage: Int {
        didSet {
            print("\(task) is now \(percentage)% complete")
        }
    }
}
var progress = Progress(task: "Loading data", percentage: 0)
progress.percentage = 10
progress.percentage = 15



//Methods - functions inside structs

struct Population {
    var country: String
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 10_000
        
    }
    
}

var China = Population(country: "China", population: 90_000)
China.collectTaxes()
 

//Mutating methods - If we try to change a property inside a normal function, we get a "Cannot assign to property: 'self' is immutable" error. By adding mutating, we give the function permission to change the properties of the struct.

/*
struct BankAccount {
    var balance : Int
    
    func deposit(amount: Int){
        balance += amount
        print("The total balance is \(balance)")
    }
}
*/
//Rewriting with 'mutating' keyword

struct BankAccount {
    var balance : Int
    
    mutating func deposit(amount: Int){
        balance += amount
        print("The total balance is \(balance)")
    }
}

var myBankAccount = BankAccount(balance: 100) //cannot use mutating if its a contant 'let'
myBankAccount.deposit(amount: 348)


//Properties and methods of Strings

let myString = "My name is Anthony"

print(myString.count)
print(myString.sorted())
print(myString.uppercased())
print(myString.lowercased())
print(myString.hasPrefix("My"))
print(myString.hasSuffix("y"))


//Properties and methods of Arrays

var components = ["View", "Activity"]

print(components.count)
components.append("Authenticate")
components.firstIndex(of: "Activity")
components.sorted()
components.remove(at: 0)



