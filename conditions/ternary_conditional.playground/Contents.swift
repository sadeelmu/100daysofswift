import UIKit

//How to use the ternary conditional operator for quick tests

// ternary operator lets us check a condition and return one of two values: something if the condition is true, and something if it’s false.

//i.e.
// we could create a constant called age that stores someone’s age, then create a second constant called canVote that will store whether that person is able to vote or not:

let age = 18
let canVote = age >= 18 ? "Yes" : "No"

//As you can see, the ternary operator is split into three parts: a check (age >= 18), something for when the condition is true (“Yes”), and something for when the condition is false (“No”). That makes it exactly like a regular if and else block, in the same order.

//WTF
//If it helps, Scott Michaud suggested a helpful mnemonic: WTF. It stands for “what, true, false”, and matches the order of our code:

//What is our condition? Well, it’s age >= 18.
//What to do when the condition is true? Send back “Yes”, so it can be stored in canVote.
//And if the condition is false? Send back “No”.

//Let’s look at some other examples, start with an easy one that reads an hour in 24-hour format and prints one of two messages:

let hour = 23
print( hour < 12 ? "It is before noon" : "It is after noon")


let names = ["Sade", "Ba", "kz"]
let nameCount = names.isEmpty ? "You do not got friends" : "Ayo you got \(names.count) friends"
print(nameCount)


//hard example
enum Theme{
    case dark,light
}

let theme = Theme.dark
let bg = theme == .dark ? "black" : "white"

//The = theme == part is usually the bit folks find hard to read, but remember to break it down:
//What? theme == .dark
//True: “black”
//False: “white”


//When should you use the ternary operator in Swift?
//The ternary operator lets us choose from one of two results based on a condition, and does so in a really concise way:

let isAuthenticated = true
print(isAuthenticated ? "Welcome!" : "Who are you?")

//good example
let strongMagnets = true
print(strongMagnets ? "Success" : "Failure")
