import UIKit

//POINT 1: BOOLEANS
//date type Boolean, stores either true or false

//i.e.
let goodDay = true

//i.e.
let isItMul = 120.isMultiple(of: 3)

//only operator boolean has is !, which means not
var isAuthenticated = false
isAuthenticated = !isAuthenticated

//TOOGLE FUNCTION
//toggle() on a Boolean it will flip a true value to false, and a false value to true.

var letsTry = true
letsTry.toggle()

print(letsTry) //will print false


//POINT 2: How to join strings together

//TWO WAYS

// 1. joining them using +
//example of operator overloading

let one = "one"
let two = "two"
let abc = "abc easy like " + one + two + "three"

// 2. special technique called string interpolation that can place variables of any type directly inside strings

let name = "Sadeel"
let job = "Programmer"
let strinterpol = "Hello my name is \(name) and I am a \(job)."

//String interpolation is much more efficient than using + to join strings one by one, but there’s another important benefit too: you can pull in integers, decimals, and more with no extra work.


//Tip: You can put calculations inside string interpolation if you want to.

//i.e.
print("5 x 5 is \(5*5)")

//String interpolation lets us place constants and variables into our strings in a streamlined, efficient way.

