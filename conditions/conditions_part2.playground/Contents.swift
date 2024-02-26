import UIKit

//How to check multiple conditions
//else statement

//i.e.

let age = 16

if age >= 18 {
    print("You can vote in the next election.")
} else {
    print("Sorry, you're too young to vote.")
}


//syntax
//if someCondition {
//    print("This will run if the condition is true")
//} else {
//    print("This will run if the condition is false")
//}


//else if
//lets you run a new check if the first one fails

let a = false
let b = true

if a {
    print("Code to run if a is true")
} else if b {
    print("Code to run if a is false but b is true")
} else {
    print("Code to run if both a and b are false")
}


//NESTED IF

//i.e.
//“if today’s temperature is over 20 degrees Celsius but under 30, print a message.”

let temp = 25

if temp > 20 {
    if temp < 30 {
        print("It's a nice day.")
    }
}

//or
//USE LOGICAL OPERATOR &&
if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

//It’s called a logical operator because it combines Booleans to make a new Boolean.

// || is or

//Whereas && will only make a condition be true if both subconditions are true, || will make a condition be true if either subcondition is true.

//i.e. of ||
let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent == true {
    print("You can buy the game")
}

//EXAMPLE

enum TransportOption{
    case airplane
    case helicopter
    case bicycle
    case car
    case train
}

var transport = TransportOption.train

if transport == .airplane || transport == .helicopter {
    print("Let's fly")
} else if transport == .bicycle {
    print("Do not fall")
} else if transport == .car{
    print("Watch google maps!")
}else{
    print("Fuck yeah we going by Train")
}
