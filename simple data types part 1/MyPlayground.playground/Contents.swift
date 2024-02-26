//DAY 1

import UIKit

// POINT 1: How to create variables and constants

//TWO TYPES

//1. var (variable)

//can be changed

//2. let (constant)


let name = "Sadeel"
print(name)


//How to create strings


let quote = "You can use double quotes inside your string such as this \"Believe\" but make sure to to put a backslack."

//multilines use triple qoutes

let multi = """
A day
in the
life
"""

//FUNCTIONS OF STRINGS

// 1. COUNT
//you can read the length of a string by writing .count after the name of the variable or constant:

print(multi.count)


// 2. uppercased()
// the same string except every one of its letter is uppercased:

print(name.uppercased())

//why does one function need parantheses and the other does not?
//if you’re asking Swift to read some data you don’t need the parentheses, but if you’re asking Swift to do some work you do.

// 3. hasPrefix()
// lets us know whether a string starts with some letters of our choosing:

print(quote.hasPrefix("You"))

// 4. hasSuffix()
//which checks whether a string ends with some text:

let pic = "picture.jpeg"
print(pic.hasSuffix(".jpeg"))

//keep in mind these functions and strings are CASE SENSITIVE

//How to join strings together



//POINT 2: How to store numbers

//TYPES OF NUMBERS

// 1. Integers
//used to store whole numbers
// can be negative and postive and can store really big numbers

let whole = 1234

//arithmetic operators: + for addition, - for subtraction, * for multiplication, and / for division.
// can be used with integers
//or += *= /= -=

// FUNCTIONS OF INTEGERS

//a. isMultiple(of:)
//on an integer to find out whether it’s a multiple of another integer.

let number = 20
print(number.isMultiple(of: 2))

// 2. DOUBLE
//floating-point numbers
//used to store decimal numbers


//NOTE TYPE SAFETY
//type safety, means that once Swift has decided what data type a constant or variable holds, it must always hold that same data type

//i.e.
var x = "a string and cannot be then reassigned to anything but a string"
x = "true"
x = 123 //will cause an error

//We can use the same operators we use on integers to use on doubles

//CGFloat is the same as Double in Swift.

