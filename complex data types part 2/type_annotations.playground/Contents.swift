import UIKit

//examining type annotation, which is Swift’s way of letting us dictate exactly what data type each variable and constant should be

//Swift is able to figure out what type of data a constant or variable holds based on what we assign to it.
//However, sometimes we don’t want to assign a value immediately, or sometimes we want to override Swift’s choice of type.
//that’s where type annotations come in.


// the normal way we used to is type inference
var type = "String"

//type inference: Swift infers that type is a string because we’re assigning text to it


//Type annotations let us be explicit about what data types we want, and look like this:

var score:Int = 20

//DATA TYPES

//A. SIMPLE
//1. STRING
//holds text
let song: String = "Palestine"


//2. INT
//holds whole numbers
let luckyNumber:Int = 13

//3. DOUBLE
//Double holds decimal numbers:
let pi: Double = 3.141

//4. BOOLEAN
//Bool holds either true or false:
var isAuthenticated: Bool = true

//B. COMPLEX
//5. ARRAYS
//Array holds lots of different values, all in the order you add them. This must be specialized, such as [String]:
var albums: [String] = ["Red", "Fearless"]

//6. DICTIONARY
//Dictionary holds lots of different values, where you get to decide how data should be accessed. This must be specialized, such as [String: Int]:

var userPassword: [String: String] = ["sadlye": "Reshop@13"]

//7. SETS
//Set holds lots of different values, but stores them in an order that’s optimized for checking what it contains. This must be specialized, such as Set<String>:
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])

//8. ENUMS
//Enums are a little different from the others because they let us create new types of our own, such as an enum containing days of the week, an enum containing which UI theme the user wants, or even an enum containing which screen is currently showing in our app.

//Values of an enum have the same type as the enum itself, so we could write something like this:

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light


//type annotation is useful if you want to for example create an empty array of strings

var teams: [String] = [String]()


// there is one golden rule: Swift must at all times know what data types your constants and variables contain


//WHY DOES SWIFT HAVE TYPE ANNOTATIONS
//The answer to the first question is primarily one of three reasons:

// 1. Swift can’t figure out what type should be used.
// 2. You want Swift to use a different type from its default.
// 3. You don’t want to assign a value just yet.

//example of the second option
var percentage: Double = 99

//example of third option
var name: String



