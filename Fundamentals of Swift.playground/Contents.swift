
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



/*
 
 DATE: 12-03-2026
 
 Revision: Initialization, Access Control, and Classes
 
 1. Conceptual Understanding
 
 Custom Initializers: I learned that while Structs provide a default memberwise initializer, creating a custom init allows me to set default or random values (like AppID) and simplify how an object is created.
 Access Control: I practiced using the private keyword. This creates a "black box" where sensitive data (like a securityCode) is hidden from the rest of the app, ensuring data integrity.
 Classes vs. Structs: I discovered that Classes are the heavy hitters of Swift. Unlike Structs (Value Types), Classes are Reference Types. They support Inheritance, allowing a "Child" class to adopt the traits of a "Parent" class.

 
 2. Logic & Implementation
 The Power of self: I learned that self is a reference to the current instance. It is essential in initializers to distinguish between a property (self.name) and a parameter (name).
 Optimization with lazy: I implemented Lazy Properties for expensive tasks like DatabaseConnection(). These properties only "wake up" and consume memory when they are actually called, keeping the initial app launch fast.
 Shared State with static: I used the static keyword for properties that belong to the type itself (like schoolName) rather than individual students. This creates a single point of truth shared by all instances.
 Deinitialization: I experimented with deinit to track when an object is removed from memory. This is exclusive to classes and is vital for cleaning up resources (like closing a file or stopping a timer).

 
 3. Safety & Edge Cases
 Manual Initializers in Classes: Unlike Structs, Classes do not get a free memberwise initializer. I learned that I must provide my own init or the code will not compile.
 Final Classes: I used the final keyword to prevent other developers from inheriting from a class (like the Fish class). This is a safety measure to protect logic that shouldn't be overridden.
 Override Safety: When inheriting, I used super.init to ensure the parent class is set up correctly before the child class adds its own logic. This prevents crashes due to uninitialized properties.

 
 4. Critical Lessons
 The Problem: I was confused why changing a copy of a Singer class changed the original, but doing the same with a Singerr struct did not.
 The Solution: I realized the "Identity" vs. "Value" difference.
 Structs are like printing two separate copies of a document; changing one doesn't affect the other.
 Classes are like sharing a link to a Google Doc; everyone with the link is looking at and editing the exact same file.
 I realized classes don't need mutating because the reference to the class is constant, but the content it points to is fair game. This makes Classes more flexible for complex data but requires more care to avoid accidental changes.
 
 
 
 */


//Initializer is a type of function that is an instance of the struct

struct Payment {
    var AppID: Int
    var AppName: String
    
    // Custom Initializer: Only requires a name
    init(name: String) {
        self.AppID = Int.random(in: 100...999) // Let's give it a random ID
        self.AppName = name
    }
    
    // To enter everything manually
    init(id: Int, name: String) {
        self.AppID = id       //self points to whatever instance of the struct is currently being used.
        self.AppName = name
    }
}

// Option A: Using the custom init
let guestApp = Payment(name: "Guest User")
print(guestApp.AppID) // Some random number

// Option B: Using the manual init
let specificApp = Payment(id: 436, name: "Premium App")
print(specificApp.AppName) // Premium App


//Referring to the current instance

struct Player {
    var name: String
    
    
    init(name: String) {
        // self.name refers to the property above
        // name refers to the value passed into the init
        self.name = name
    }
}
 

//Lazy property is created to save memory and processing time because they are not being used immediately when the instance is created

struct DatabaseConnection {
    init() {
        print("Connected to Database... (This was expensive!)")
    }
}

struct AppGenerator {
    var name: String
    // This won't run when AppGenerator is created!
    lazy var connection = DatabaseConnection()

    init(name: String) {
        self.name = name
    }
}

var myApp = AppGenerator(name: "PhotoEdit")
// At this point "Connected to Database" has NOT been printed

print("App is ready.")
print(myApp.connection) // the connection is created now


//Static properties belongs to the struct itself not to the instances (mostly used for count based application. It is a single variable which is shared by everyone in the instance.

struct Student {
    static let schoolName: String = "New York University" //this belongs to the struct and not the instance created
    var name: String
    
}

let student1 = Student(name: "Alice")  //Instances
let student2 = Student(name: "Bob")  //Instances

print(Student.schoolName) //It is a shared variable to all Student instances



//private property allows access limited to members of the particular struct

//Another example - locker
struct Locker {
    var lockerNumber: Int       // Everyone can see this (public and internal)
    private var securityCode: Int // Hidden from the outside (private)

    init(number: Int, code: Int) {
        self.lockerNumber = number
        self.securityCode = code
    }
}

var myLocker = Locker(number: 101, code: 5555)

// This works fine
print("I am at locker \(myLocker.lockerNumber)")

// This will cause a crash (trying to access a private variable)
// print("The secret code is \(myLocker.securityCode)")



//Classes - they are like structs, it is used to create new types with their own properties and methods

//1. Difference - Classes do not come with memberwise initializer while for structs Swift automatically creates a memberwise initializer

struct Puppy {
    let name: String
    let age: Int
    
}

let myPuppy = Puppy(name: "Robbie", age: 1) //Swift automatically created it since they are simple data containers


class ChessPiece {
    let type: String
    
    init(type: String) {     //We have to create initializers in class or the code won't compile
        self.type = type
    }
}

let myPiece = ChessPiece(type: "Rook")


//2. Difference - Classes can be created based from another class(it can inherit all properites and mmethods of the original class and add some of its own -> Inheritance) but its not the same case with structs

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

class GoldenRetriever: Dog {
    init(name: String) {                                    //child class GoldenRetriever has its own initializer
        super.init(name: name, breed: "Golden Retriever")  //initializes the parent class (Dog) to avoid crashing
    }
}



//Method Overriding - use override func to override the method from parent class

//In the example below, class Siamese overrides the MakeNoise() function from its parent class.

class Cat {
    
    func MakeNoise() {
        print("Meow")
    }
}

class Siamese: Cat {
    override func MakeNoise() {
        print("Siamese Meow")
    }
}

//final classes are classes that cannot be inherited. They cannot have their methods overriding.

final class Fish {
    var name: String
    var color: String
    
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
}

/* Gives erorr

class salmon: Fish {

}

*/


//3. Difference - when we copy a struct, the original and copy remains two different things, while for classes when one of them is changed (copy or original point to the same thing), it changes the other.
// Copy refers to creating an instance


class Singer {
    var name = "Taylor Swift"
    
}

let singer1 = Singer()
print(singer1.name)         //Prints Taylor Swift

let singer2 = singer1
singer2.name = "Katy Perry"

print(singer1.name)         //Prints Katy Perry



struct Singerr {
    var name = "Taylor Swift"
    
}

var singer11 = Singerr()
print(singer1.name)         //Prints Taylor Swift

var singer22 = singer11
singer22.name = "Katy Perry"

print(singer11.name)         //Prints Taylor Swift (structs creates a new variable for each instance)


//4. Difference - Classes can have deinitializers, they are code that run when an instance of a class is destroyed

class DestroyInstance {
    var name = "Mary Shepherd"
    
    init(){
        print("\(name) is Alive!")
    }
    deinit{
        print("Mary is dead.")
    }
    func greeting (){
        print("Hello, my name is \(name)")
    }
    
     
    
}

 
for _ in 1...3 {                //when the instance reach 3 in number, the 'deinit' triggers and prints "Mary is dead"
    let state = DestroyInstance()
    state.greeting()
}
 

//5. Difference - Class does not need mutating property. If we have a constant class with a variable property, that property can be changed. Because of this, classes don’t need the mutating keyword with methods that change properties, that’s only needed with struct

class SSinger {
    var name = "Taylor Swift"
    
}

let ssinger1 = SSinger()
print(ssinger1.name)         //Prints Taylor Swift

let ssinger2 = ssinger1
singer2.name = "Katy Perry"

print(ssinger1.name)         //Prints Katy Perry






/*
 DATE: 13-03-2026
 
 Revision: Protocols & Extensions
 Topic: Protocol-Oriented Programming (POP)
 
 
 1. Conceptual Understanding
 Protocols (The Blueprint): I learned that protocols are "rules" or "contracts" that define exactly what properties and methods a type must have. A protocol doesn't do anything on its own; it just sets the standard for others to follow.
 Extensions: These allow me to add new functionality to existing types (like Int, String, or Double) without having to access their original source code.
 Protocol-Oriented Programming (POP): I discovered that by combining protocols with extensions, I can provide default implementations. This makes methods "optional" to override and allows for shared behavior across different types.

 
 2. Logic & Implementation
 Task: Building a modular authentication system and enhancing Swift's built-in data types.
 Protocol Inheritance: I practiced merging multiple small protocols (like PayPayment and Training) into a single Employee protocol. This enforces "all-or-nothing" compliance for complex types.
 Type Enhancement: I used extensions to add custom computed properties:
 Int.isEven: Returns a boolean check on the number.
 String.isPalindrome: Uses reversed() to check if a word reads the same backward.
 Double.percentage: Quickly converts a whole number to its decimal percentage equivalent.

 Default Implementation: In my AuthenticationService, I provided a default logout() method in an extension. This means any struct or class conforming to it gets logout functionality for "free."

 3. Safety & Edge Cases
 Get/Set Requirements: I learned that protocol properties must explicitly state if they are readable (get) or writable (set). This prevents logic errors where a constant is expected but a variable is provided.
 Mutating Protocol Methods: Since I don't know if a struct (value type) or class (reference type) will use my protocol, I must mark methods that change internal data as mutating.
 Optionality: By moving a method into a protocol extension, it becomes optional for the conforming type to implement. If the type doesn't provide its own version, Swift safely uses the default.

 4. Critical Lessons
 The Problem: I was trying to create an instance of a protocol directly, which resulted in a compiler error.
 The Solution: I realized that protocols are types, not objects. You can’t make a "Protocol object," but you can make a variable that holds any object conforming to that protocol.
 The Lesson: Protocol-oriented programming is often better than Class-based inheritance because it allows a type to conform to many protocols at once, whereas a class can only have one parent.
 
 */


// Protocols - way of describing what properties and methods (Rules) of a class, struct or enum must have if they claim to conform to a protocol
//We cannot create instances of the protocol, a type (class, struct, enum) follows a protocol

protocol Identifyable {
    var id: String { get set }  //you must specify if a property is getter or setter or both (get, set)
    func logID()   //logID method is created hence any type conforming to this protocol must implement this method
}

struct User {
    var id: String
    
    func logID(){
        print("The login ID is generated for \(id)")
    }
}


//Protocol extension (having some methods optional to implement)
//Protocol-oriented programming is the practice of designing your app architecture as a series of protocols, then using protocol extensions to provide default method implementations

protocol AuthenticationService {
    var currentUserID: String? { get set}
    
    func login(username: String, password: String)  //only define the 'method names' and 'parameters' in the protocol
    
    //Use mutating because we don't know if a class or struct will conform
    mutating func logout()
}

//This is default - if it is implemented in a struct or class and if the class or struct doesn't write a custom version of this method, this will be implemented, it could also be optional (methods implemented in this don't neccesarily be implemented in a struct or class which conforms to the protocol)

extension AuthenticationService {
    mutating func logout() {
        currentUserID = nil
    }
}


struct UserLogin {
    var id: String
    var currentUserID: String?
    
    
   
}

extension UserLogin: AuthenticationService {
    func login(username: String , password: String) {
        print("User logged in")
    }
    

}



//Protocol inheritance - we can inherit many protocols into one

protocol PayPayment {
    func payable()
}

protocol Training{
    func study()
}

protocol Timings {
    func shift()
}

//All three protocols inherited into one - Employee

protocol Employee : PayPayment, Training, Timings { }  //the conforming type of Employee protocol is forced to implement the methods from all the inherited protocols (PayPayment, Training, Timings)


protocol Readable{
    func read()
}

protocol Writable {
    func write()
}

protocol FileManager: Readable, Writable {
    func sync()
}


//computed values - extensions helps us to add methods to specific types like Int, Double, Float, String

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

var number12 = 6

print(number12.isEven)



extension String {
    var isPalindrome: Bool {
        return String(self.reversed()) == self
    }
}

var string1 = "racecar"
print(string1.isPalindrome)

var string2 = "hello"
print(string2.isPalindrome)



extension Double {
    var percentage: Double {
        return self / 100
    }
}



/*
 DATE: 16-03-2026
 
 Revision: Optionals & Typecasting
 Topic: Swift Safety & Dynamic Typing

 1. Conceptual Understanding
 Optionals: A "box" that either contains a value or nil. This prevents crashes by forcing me to acknowledge the possibility of missing data.
 Nil Coalescing (??): A fallback mechanism that provides a default value if an optional is empty.
 Typecasting: The process of treating an instance as a different type in its hierarchy, using as? (safe) or as! (forced).

 
 2. Logic & Implementation
 Task: Safely handling user input and managing collections of different object types.
 Unwrapping Logic: * if-let for localized use; guard-let for early exits to keep the main code path clean.
 Optional Chaining: Using ?. to safely access properties deep within a nested structure.
 Type Management: Used as? inside loops to "downcast" generic items (e.g., Device) into specific subclasses (e.g., Laptop) to access their unique methods.

 
 3. Safety & Edge Cases
 Force Unwrapping (!): I learned this is a "crash risk" and should be avoided unless it is 100% certain the value is not nil.
 The try? Pattern: Learned to simplify error handling by converting throwing functions into optionals, bypassing the need for a do-catch block.
 Any vs. AnyObject: Used Any to store a mix of strings, integers, and doubles in a single array, utilizing switch and as for type-specific logic.

 
 4. Critical Lessons
 The Problem: Attempting to use a subclass method (like phone.call()) on a parent type variable (like Device).
 The Solution: Downcasting. Swift requires explicit casting with as? to "unlock" the specific features of a subclass.
 The Lesson: Optionals are a contract. They turn potential runtime crashes into compile-time requirements, ensuring the developer handles every "empty" scenario.
 
 
 */


//Optionals - to declare varibles that hold nil value initially. They are also used to avoid errors (containg no value or absent data) that may crash the app.

var info: Int? = nil  //info holds no value

info = 43 //can be initilised later


//Unwrapping an optional - we use if-let for optinionals. In this case below, if optionalString is empty and we're trying to count the string, it will throw an error

let optionalString: String? =  nil

// print(optionalString.count)      throws an error

if let unwrappedString = optionalString {
    print(unwrappedString.count)   //optionalString is available here (only inside the loop)
} else {
    print("Empty string")
}

//optionalString is not available here


//Optional unwrapping using guard-let (when a value is required for the rest of the function to work. In this control flow, we must exit the loop (return, throw, continue)

func greeting(name: String?) {
    guard let name = name else {
        print("No name is provided. Enter a name to continue.")
        return
    }
    print("Hello, \(name)!")  //name is only available outside the guard-let unwarapping
    
}

//Forced unwarapping - use '!' for forced unwrapping (only when sure nnumber is not nil otherwise it will crash).It converts the nnumber to regular Int rather than optional Int?
//

var nnumber = "5"
let str = Int(nnumber)!  //forced unwrapping  (Never used)



//Implicit optional unwrapping -this optional doesn't need unwrapping like regular ones, we can consider them as unwrapped (don't need to use if-let or guard-let

let value: Int! = nil


//nil coalescing operatator - using the backup value when the variable is nil

func getName(id: Int) -> String? {
    if id == 1 {
        return "Success"
    } else {
        return nil
    }
}

let user = getName(id: 10) ?? "Anonymous"  //?? is the nil coalescing operator. Since 15 was not 1, it returned nill and got the backup value "Anonymous


//Optional chaining -checking for something specific on a single line rather than nested if-let (its the path)

struct House {
    var title: String? = nil

}


let myHome: House? = House(title: "BlueHouse")
 

let myTitle = myHome?.title?.uppercased()       //if myHome was nil, it would stop there and return nil. '.uppercased is used when all other optionals are not nil'



//using nil coalescing in optional chaining  -it gives a default value (provided after ??) if it returns nil
 struct House2 {
    var title: String? = nil
}

let myHome2: House2? = House2(title: nil)

let myTitle2 = myHome2?.title?.uppercased() ?? "Found nothing"
print(myTitle2)


//Optional try -using in do try catch block

func CheckPassword(password: String) throws -> Bool {
    if password.count < 6 {
        throw PasswordError.TooShort
       
    }
    return true
  
}

if let result = try? CheckPassword("12454") {
    print(result)
} else {
    print("Invalid!")
}


//Typecasting - to check the type of an instance

var stringVar: Any = "Hello"

if let stringValue = stringVar as? String {
    print("It's a string")
}

//we use 'as'

class Devices {
}

class Phone: Devices {
    func calling () {
        print("Phone is calling")
    }
}

class Tablet: Devices {
    func browsing () {
        print("Tablet is browsing")
    }
}

class Laptop: Devices {
    func coding () {
        print("Laptop is coding")
    }
}
class CDPlayer: Devices {
    func play(){
        print("Playing...")
    }
}

let bag: [Devices] = [Phone(), Tablet(), Laptop()]

for items in bag {
    
     if let phone = items as? Phone {      //checks if its a phone, if it is, only phone function runs
        phone.calling()
    }
    
    if let myLaptop = items as? Laptop {
        myLaptop.coding()
    }
    
    if let myCDevice = items as? CDPlayer {
        myCDevice.play()   //shows nil
    }
}



let things: [Any] = [3.14, "Claude", 42]

for thing in things {
    
    switch thing {
    // Checking if it's a Double (as? is not needed inside case just use 'as')
    case let someDouble as Double:
        print("The circle constant is \(someDouble)")
        
    // Checking if it's a string
    case let someString as String:
        print("The AI name is \(someString)")
        
    // Checking if it's an int
    case let someInt as Int:
        print("The answer to everything is \(someInt)")
        
    default:
        print("Unknown item")
    }
}



let valuee: Any = "100"


//Gives nil because valuee is a string
if let number = value as? Int {
    print("It's a number!")
} else {
    print("It's not a number!")
}



import Foundation

/*
 
 Date: 17-03-2026
 Revision: Concurrency & Modern Swift
 Topic: Async/Await, Tasks, and Task Groups

 
 1. Conceptual Understanding
 Concurrency: The ability to run multiple pieces of code simultaneously so that heavy operations (like networking) don't freeze the user interface.
 Main vs. Background Threads: * Main Thread: Handles all UI events (button taps, animations).
 Background Thread: Handles "heavy lifting" (data downloading, image processing, database queries).
 Async/Await: A modern way to write asynchronous code. async marks a function that can pause, and await is the marker where the pause actually happens.

 2. Logic & Implementation
 Task: Creating a weather reporting system and simulating multiple network requests.
 The Task Block: I used Task { } to bridge the gap between synchronous and asynchronous code, allowing async functions to run on their own threads.
 Execution Flow: I observed that the Main Thread continues to execute while Task blocks are pending. This explains why "Weather report for London..." prints before the actual weather data is returned.
 Parallel Execution:
async let: Used for a fixed number of simultaneous tasks (e.g., fetching a profile and a picture at once).
withTaskGroup: Used for a dynamic or unknown number of tasks. It allows adding multiple tasks in a loop and collecting results as they finish.

 
 3. Safety & Edge Cases
 Thread Safety: I learned that UI updates must always return to the Main Thread (traditionally via DispatchQueue.main.async or modern @MainActor).
 Sleep & Delays: I used Task.sleep(nanoseconds:) to simulate network latency, learning that it is a non-blocking pause—meaning the thread isn't "frozen," it’s just waiting.
 Task Groups: I learned that while Task Group tasks run in parallel, the order in which they return depends on their individual completion times, not the order they were added.

 
 4. Critical Lessons
 The Problem: Sequential await calls were making the app slow because each task waited for the previous one to finish entirely.
 The Solution: I implemented Parallelism. By using async let and Task Groups, I triggered multiple requests at the same time, reducing the total wait time to the duration of the single longest task rather than the sum of all tasks.
 The Lesson: "Wait only when you must." Use structured concurrency to trigger work as early as possible and only await the results when the data is actually needed for the next step.
 
 */


//Concurrency -to run multiple pieces of code at the same.

//async: Marks a function as one that might take some time and can be "paused."

//await: Tells the program, "Wait here for the result of this async function before moving to the next line."


// using concurrency

func fetchWeather() async -> String {

    //maybe it waits for 2 seconds to download
    return "Sunny, 25 degrees celsius."

}

 


// 1. Define the work
func feetchWeather() async -> String {
    // A shorter sleep to test (1 second)
    try? await Task.sleep(nanoseconds: 1_000_000_000)
    return "Sunny, 25°C"
}

// 2. Wrap it in a Task so it has its own thread to run on
Task {
    print("Step 1: Requesting weather...")

    let result = await feetchWeather()

    print("Step 2: Done!")
    print("Final Result: \(result)")
}


print("Main thread is staying awake...")





func ffetchWeather() async -> String {
    // Simulate a 2-second delay
    try? await Task.sleep(nanoseconds: 2_000)
    return "Sunny, 25°C"
}

print("Starting...")
let weather = await ffetchWeather()
print("Result: \(weather)")


//We do not perform the time-taking operation on the main thread.
//Main threads only has UI events, so events can happen quickly. For activities like downloading or other similar tasks, we use background thread so the UI isn't frozen when tasks like downloading are in progress.

//Main thread (everything the user sees and touches): Updating labels, showing images, and responding to button taps. (fast and snappy)

//Background thread: Activities like downloading, sorting a list, processing an image ect.


// dispatch.main.async  -> to go to main thread (it can only be User interface otherwise will crash or lag)
//dispatch.global().async -> to go to background thread (it can be User interface, user initiated and default, utility (the user doesn't track actively), background (tasks like updating, downloading)






func FetchWeather (city: String, delay: UInt64) async ->String {
    
    try? await Task.sleep(nanoseconds: delay)
    return "\(city): 15 degrees celsius"
}


//Each task is performed simultaneously with the delay mentioned. If all the tasks have same delay, we wouldn't be sure of the order of the tasks.

//Task 1
Task {
    let weather = await FetchWeather(city: "London", delay: 1_000_000_000)
    print("A completed: \(weather)")
}

//Task 2
Task {
    let weather = await FetchWeather(city: "Paris", delay: 2_000_000_000)
    print("B completed: \(weather)")
}

//Task 3
Task {
    let weather = await FetchWeather(city: "Pune", delay: 3_000_000_000)
    print("C completed: \(weather)")
}

print("Main thread: Weather report for London, Paris and Pune.")        //this is printed first



Task {
    async let weatherA = FetchWeather(city: "London", delay: 1_000_000_000)
    async let weatherB = FetchWeather(city: "Paris", delay: 4_000_000_000)
    
    // This line waits for BOTH to finish
    let results = await [weatherA, weatherB]
    print("All weather reports received: \(results)")
}




// Task Group: A group that downloads 3 city temperatures at once
await withTaskGroup(of: String.self) { group in
    let cities = ["London", "Paris", "Pune"]
    
    for city in cities {
        group.addTask {
            return await FetchWeather(city: city, delay: 1_000_000_000)
        }
    }
    
    // We collect them as they finish
    for await result in group {
        print("Received: \(result)")
    }
}

//async-let: used for fixed number of tasks, its simple, ex: Getting a user's Profile + Friends list.

//Task Group: used for unknown or dynamic number of tasks. Requires a block and a loop, ex: Getting all 50 photos in an album.



//Task Group - Different tasks, same result type


func checkDatabase() async throws -> String {
    try await Task.sleep(nanoseconds: 500_000_000)
    return "Database OK"
}

func fetchProfilePic() async throws-> String {
    try await Task.sleep(nanoseconds: 300_000_000)
    return "Image Downloaded"
}

func checkForUpdates() async throws -> String {
    try await Task.sleep(nanoseconds: 200_000_000)
    return "No updates"
}

let results = await withTaskGroup(of: String.self) { group in
    
    // Task 1: Check the database
    group.addTask {
        return await checkDatabase() // Returns Database OK
    }
    
    // Task 2: Download a profile picture
    group.addTask {
        return await fetchProfilePic() // Returns Image Downloaded
    }
    
    // Task 3: Check for app updates
    group.addTask {
        return await checkForUpdates() // Returns No updates
    }
    
    // Collect all different statuses into one array
    var collector: [String] = []
    for await status in group {
        collector.append(status)
    }
    return collector
}





/*
 
 Date: 18-03-2026
 
 
 Topic: Escaping Closures, Actors, and Networking

 1. Conceptual Understanding
 Closure Lifecycles: I learned the critical difference between Non-escaping (executed and destroyed within the function) and Escaping closures. An escaping closure is "saved" to be run later, usually after a background task finishes or by being stored in a property.

 Actors: These are a new reference type in Swift designed for Thread Safety. Unlike classes, actors ensure that only one thread can access their mutable state at a time, preventing "Data Races" without manual locking code.

 The Main Actor: I discovered @MainActor, a globally unique actor that ensures code (like UI updates) always runs on the Main Thread.

 2. Logic & Implementation
 Task: Simulating asynchronous image downloads and protecting shared data (like a Bank Account) from concurrent access.

 Escaping Patterns: I implemented @escaping in two key ways:

 Asynchronous Callbacks: Using DispatchQueue to return data after the main function has already finished.

 Storage: Assigning closures to external variables (like storedCompletion) for execution upon user events.

 Autoclosures: I used @autoclosure to wrap expressions automatically. This delays the execution of code (like customersInLine.remove(at: 0)) until the closure is actually called, rather than when it's passed as an argument.

 URLSession Networking: I practiced the "Handshake" process: converting a String to a URL, requesting data via URLSession, and waiting for the server to stream data packets back into a usable Data object.

 3. Safety & Edge Cases
 Strong Reference Cycles: In escaping closures, I learned to use [weak self] and guard let self = self to prevent memory leaks. This ensures that if a view controller is dismissed while a download is pending, the app doesn't keep it in memory.

 Main Thread Hopping: Since networking happens on a background thread, I practiced jumping back to the main thread using DispatchQueue.main.async or @MainActor to update labels and images safely.

 Actor Isolation: I learned that accessing an actor's properties or methods from the outside requires await, acknowledging that the call might be suspended if the actor is currently busy with another task.

 4. Critical Lessons
 The Problem: My app was crashing or showing "Thread Sanitizer" warnings when multiple tasks tried to update the same balance or UI element.

 The Solution: Actors and MainActor. By moving shared data into an actor, Swift automatically manages the "line" of threads waiting to access that data. By marking UI classes with @MainActor, I guaranteed that all visual updates happen on the correct thread.

 The Lesson: Execution order matters. In an escaping closure, the code following the function call (e.g., "3. Function body finished") usually runs before the code inside the closure (e.g., "4. Closure executed").
 
 
 */


//Non-escaping closures - closure is executed within the body of the function. Once the function hits its closing brace, the closure is deallocated.
// compiler knows the closure won't leave the function, it can perform better memory optimizations.


func performSimpleTask(action: () -> Void) {
    print("Starting function...")
    action() //closure runs here
    print("Ending function.")
}
// The closure is gone once we get here


//escaping closure - An escaping closure is "held onto" to be executed later. This usually happens in two scenarios:

// Asynchronous Tasks: The function starts a background task (like a network call) and returns immediately, but the closure runs whenever the data arrives.

// Storage: You assign the closure to a variable or property outside the function.


var completionHandlers: [() -> Void] = []

func performAsyncHeaders(completion: @escaping () -> Void) {
    // We store the closure in an external array so it escapes the function
    completionHandlers.append(completion)
    
    // Or we use it in a delayed block
    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
        completion()
    }
}


func loadData() {
    // 1. The escaping closure begins
    someService.fetchRemoteData { [weak self] (result) in
        
        // 2. We are now likely on a background thread.
        // We use 'guard' to make sure 'self' still exists.
        guard let self = self else { return }

        // 3. To fix the Main Actor error, we hop back to the main thread manually.
        DispatchQueue.main.async {
            self.myLabel.text = result
            print("UI Updated safely!")
        }
    }
}

class DataManager {
    var storedCompletion: (() -> Void)?

    // This must have @escaping because we are saving it to 'storedCompletion'
    func saveForLater(completion: @escaping () -> Void) {
        self.storedCompletion = completion
    }
}


// we send a request to a server, the function finishes immediately but the data comes back seconds later

func downloadImage(from url: String, completion: @escaping (Bool) -> Void) {
    print("1. Starting download...")
    
    // Simulating a background network task
    DispatchQueue.global().async {
        // Download happens
        print("2. Download finished on background thread.")
        
        // We call the closure after the function has already returned
        completion(true)
    }
    
    print("3. Function body finished!")
}



// Usage
downloadImage(from: "https://example.com/cat.jpg") { success in
    print("4. Closure executed: Success is \(success)")
}

//Execution Order: 1 -> 3 -> 2 -> 4 because 4 happens after 3, the closure escaped the function.



// A property to store the closure for later
    var onAlertDismissed: (() -> Void)?

    // We MUST use @escaping because we are assigning 'action' to a property
    func setDismissAction(action: @escaping () -> Void) {
        self.onAlertDismissed = action
    }

    func userTappedDone() {
        // Run the stored closure whenever we want
        onAlertDismissed?()
    }






//Autoclosures - closure that’s automatically created to wrap an expression that’s being passed as an argument to a function. It doesn’t take any arguments, and when it’s called, it returns the value of the expression that’s wrapped inside of it


var customersInLine = ["Alex", "Bob", "Charlie", "Dan"]
print(customersInLine.count)
//prints 5

let customerProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count)
//prints 5


print("Now serving \(customerProvider())!")
// Prints "Now serving Chris!"
print(customersInLine.count)
//prints 4


// Actors - An actor is an object that protects access to mutable data by forcing code to take turns accessing that data. They are like classes but thread-safe. Its like a reference type.

// If two threads try to change the same variable of a class at the same time, app would crash or behave strangely and to avoid this we have to manually write complex locks or use DispatchQueue.sync.
// Actors do this work for you automatically.
//If another piece of code tries to talk to the actor while it’s busy, that code has to wait in line.

actor BankAccount {
    var balance: Int = 0
    
   func deposit(amount: Int) {
        balance += amount
    }
}

// Main Actor is a special, globally unique actor that represents the Main Thread. Using @MainActor we can mark a whole class (like a View Model) or just a single function to stay on the main thread.


@MainActor
//This is main thread
class ChatManager {
    func sendMessage(_ message: String) async {
        var log: [String] = []
        log.append(message)
    }
}




//Macros

struct Product {
    let name: String
    let price: Double
}

let products = [Product(name: "iPhone", price: 999), Product(name: "iPad", price: 799)]

// Filter: Find products cheaper than 800
let cheapItems = products.filter { $0.price < 800 }


//Image downloader

/*
 1. The Transformation: String → URL
You can’t just give URLSession a String. You have to "initialize" a URL object. This checks if the string is actually a valid web address (e.g., it has a https://, no weird spaces, etc.).
*/


let urlString = "https://picsum.photos/200"
guard let url = URL(string: urlString) else {
    print("Invalid Address")
    return
}


/*
 
 2. The Handshake: URLSession → Internet
 When you call try await URLSession.shared.data(from: url), the following happens:

 Request: Your phone sends a "GET" request to the server at that address.

 Server Check: The server (e.g., Picsum) looks at the request. It says, "Okay, I have an image for this request."

 The Stream: The server starts sending the image back in tiny "packets" of data.

 Completion: URLSession waits until every single packet has arrived, bundles them into one Data object, and hands it back to your variable.
 
 */











/*
 
 
 DATE: 23-03-2026
 
 Revision: DispatchQueues & Thread Management
 Topic: Grand Central Dispatch (GCD)

 1. Conceptual Understanding
 Grand Central Dispatch (GCD): I learned that GCD is the engine Swift uses to manage multi-threading. It uses Queues to decide which thread handles which piece of work.

 The Main Queue: The most important queue. It is Serial (one task at a time) and handles everything the user sees. If this queue is blocked, the app freezes.

 Global Queues: System-provided Concurrent queues. They are divided by Quality of Service (QoS) levels to help the system prioritize battery life and CPU power.

 Async vs. Sync:

 async: "Fire and forget." The current thread continues immediately while the task runs elsewhere.

 sync: "Wait here." The current thread pauses until the dispatched task is completely finished.

 2. Logic & Implementation
 Task: Coordinating multiple background operations and ensuring UI safety.

 The "Main-Background-Main" Pattern: I practiced the standard industry workflow:

 Start on Main (User triggers action).

 Move to Global (Perform heavy work/API calls).

 Return to Main (Update the UI with results).

 DispatchGroup: I implemented group.enter() and group.leave() to synchronize multiple independent tasks. I used group.notify to trigger a final action only after every task in the group reached completion.

 Delayed Execution: I used asyncAfter to trigger code precisely after a deadline, which is useful for splash screens or timed UI dismissals.

 3. Safety & Edge Cases
 Priority (QoS) Levels: I learned to categorize tasks to save system resources:

 .userInteractive: For animations or immediate feedback.

 .utility: For tasks the user is aware of (loading bars).

 .background: For invisible tasks like indexing or syncing.

 Nested Execution Order: I experimented with nested queues and learned that dispatching async to the same queue (Main-in-Main) puts the new task at the very end of the line, allowing the current block to finish first.

 Deadlock Awareness: I practiced avoiding DispatchQueue.main.sync inside the main thread, as it causes the app to wait for a task that can never start—permanently freezing the app.

 4. Critical Lessons
 The Problem: When running multiple Task blocks or DispatchQueues, the print statements were appearing in an unpredictable order.

 The Solution: I realized this is the nature of Concurrency. Unless tasks are in a Serial queue or synchronized via a DispatchGroup, the system finishes them based on CPU availability and task complexity, not the order they were written.

 The Lesson: Always update the UI on the Main Thread. Even if a background task finishes perfectly, calling label.text from a global queue can lead to erratic behavior or silent crashes.

 
 
 */


//Main Queue - Runs on the main thread. High priority. - Updating UI, handling user input.
//Global Queues - System-provided background threads. - Data processing, API calls, heavy math.
//Custom queues - Custom Queues - Queues you create yourself. - Specific background tasks where you need control.


//async method - It tells the queue to run the code but does not make the current thread wait. Your app continues running immediately.

DispatchQueue.global().async {
    //Runs in the background
    print("This is the background thread running. ")
    
    //Runs in the main thread
    DispatchQueue.main.async {
        self.label.text("Thread ran and finished executing.")
    }
}

//sync method - It tells the queue to run the code and make the current thread wait until the next task is finished


//asyncAfter (delayed async)

DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
    // Runs after a 2 second delay
    print("Hello after 2 seconds")
}


//Quality of Service (qos) - determines the priority of the tasks

//When using background queues, we can tell the system how important the task is using QoS classes:

//.userInteractive: Immediate (UI updates/animations).

//.userInitiated: Fast (Loading a document or results of a user click).

//.utility: Long-running (Downloading data, progress bars).

//.background: Not visible to user (Indexing, syncing, backups).


DispatchQueue.global(qos: .background) .async {
    //low priority - runs in the background thread
    
    print("This task is running on the background queue.")
}


// A DispatchGroup allows you to aggregate a set of tasks and synchronize behaviors on them. You "enter" the group when a task starts and "leave" when it finishes.

let group = DispatchGroup()

//Task 1
group.enter()
DispatchQueue.global().async {
    print("Task 1 has started.")
    sleep(2)
    print("Task 1 finished.")
    group.leave()
}

//Task 2
group.enter()
DispatchQueue.global().async {
    print( "Task 2 has started.")
    sleep(1)
    print("Task 2 finished.")
    group.leave()
}

group.notify(queue: .main) {
    print("Both tasks have finished executing.")
}


//Nested DispatchQueues

//Background to main : we perform a slow operation (like fetching data or processing an image) and then nested inside it, you call the main queue to show the result.

DispatchQueue.global(qos: .userInitiated) .async {
    let result = calculusResult()      //let it be a function that requires more processing
    
    DispatchQueue.main.async {
        self. label.text = "Result: \(result)"
    }
}


//Main in Main

DispatchQueue.main.async {
    print("A")
    
    DispatchQueue.main.async {
        print("B")                      //This is added to the back of the line
    }
    
    print("C")
}

//Prints A, C, B



//Main-background-main

DispatchQueue.main.async {
    print("A")
    
    DispatchQueue.global().async {
        print("B")
        DispatchQueue.main.async {
            print("C")
        }
    }
}

//Prints A, B, C


 
