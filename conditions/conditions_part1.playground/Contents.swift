import UIKit

//How to check a condition is true or false

//Swift handles these with if statements, which let us check a condition and run some code if the condition is true. They look like this:

//if someCondition{
//    print("Do something")
//}

//part of the if condition:
//The condition starts with if, which signals to Swift we want to check some kind of condition in our code.
//The someCondition part is where you write your condition – was the score over 80? Does the array contain more than 3 items?
//If the condition is true – if the score really is over 80 – then we print the “Do something” message.

//i.e.
let score = 80
if score>80{
    print("Great Job")
}


//if the user entered a name that comes after their friend’s name alphabetically, put the friend’s name first.
//strings can also use operators

let myName = "Sadeel Muwahed"
let friendName = "Baha Slueiman"

if myName > friendName
{
    print("My name \(myName) comes before my friend's name \(friendName) in the alphabet")
}
else if friendName > myName{
    print("My name \(myName) comes after my friend's name \(friendName) in the alphabet")

}

//third example condition: if adding a number to an array makes it contain more than 3 items, remove the oldest one.

var numbers = [1,2,3]
numbers.append(4)

//check to see if it contains more than 3
if numbers.count>3{
    //remove oldest number so index 0
    numbers.remove(at: 0)
}

print(numbers)

// fourth example condition: if the user was asked to enter their name and typed nothing at all, give them a default name of “Anonymous”.

var username = ""

if username==""{
    username="Anon"
}

//or
if username.count==0{
    username = "Anonsa"
}

//or
if username.isEmpty{
    username = "Anony"
}


print("Welcome, \(username)")


//How does Swift let us compare many types of data?

//Swift lets us compare many kinds of values out of the box, which means we can check a variety of values for equality and comparison.
//we could compare strings and numbers in various ways:

let firstName = "Paul"
let secondName = "Sophie"

print(firstName == secondName)
print(firstName != secondName)
print(firstName < secondName)
print(firstName >= secondName)

let firstAge = 40
let secondAge = 10

print(firstAge == secondAge)
print(firstAge != secondAge)
print(firstAge < secondAge)
print(firstAge >= secondAge)


// For example, Swift has a special type for storing dates called Date, and you can compare dates using the same operators: someDate < someOtherDate,

let currentD:Date = Date()

//We can even ask Swift to make our enums comparable, like this:

enum Sizes:Comparable{
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(first<second)

//HERE WE USED THE COMPORABLE PROTOCOL

//Comparable
//A type that can be compared using the relational operators <, <=, >=, and >.

//The Comparable protocol is used for types that have an inherent order, such as numbers and strings. Many types in the standard library already conform to the Comparable protocol. Add Comparable conformance to your own custom types when you want to be able to compare instances using relational operators or use standard library methods that are designed for Comparable types.


