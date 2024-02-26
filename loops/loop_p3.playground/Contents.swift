import UIKit

//How to skip loop items with break and continue

//Swift gives us two ways to skip one or more items in a loop:
    //continue skips the current loop iteration,
    //break skips all remaining iterations

//CONTINUE
    //When you’re looping over an array of data, Swift will take out one item from the array and execute the loop body using it.
    //If you call continue inside that loop body, Swift will immediately stop executing the current loop iteration and jump to the next item in the loop, where it will carry on as normal.

//i.e.
let filenames:[String] = ["me.jpg", "work.txt", "pic.jpg"]

for filename in filenames {
    if filename.hasSuffix("jpg") == false{
        continue
    }
    
    print("Found picture \(filename)")
}

//That creates an array of filename strings, then loops over each one and checks to make sure it has the suffix “.jpg” – that it’s a picture. continue is used with all the filenames failing that test, so that the rest of the loop body is skipped.


//BREAK
    //As for break, that exits a loop immediately and skips all remaining iterations

//i.e.
let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000{
    if i.isMultiple(of: number1) && i.isMultiple(of: number2){
        multiples.append(i)
        
        if multiples.count == 10{
            break
        }
    }
}

print(multiples)

//the code above does this:
    //Create two constants to hold two numbers.
    //Create an integer array variable that will store common multiples of our two numbers.
    //Count from 1 through 100,000, assigning each loop variable to i.
    //If i is a multiple of both the first and second numbers, append it to the integer array.
    //Once we hit 10 multiples, call break to exit the loop.
    //Print out the resulting array.


//So,
// use continue when you want to skip the rest of the current loop iteration,
//and use break when you want to skip all remaining loop iterations.


//Why would you want to exit a loop?
// Swift’s break keyword lets us exit a loop immediately, regardless of what kind of loop we’re talking about.
//i.e
// For example, if you had an array of scores and you want to figure out how many of them the player achieved without getting a 0, you might write this:

let scores = [1,8,4,3,0,5,2]
var count = 0

for score in scores {
    if score == 0 {
        break
    }
    count += 1
}

print("You had \(count) scores before you got 0.")


//Why does Swift have labeled statements?
//Swift’s labeled statements allow us to name certain parts of our code, and it’s most commonly used for breaking out of nested loops.

//i.e
let options = ["up", "down", "left", "right"]

let secretCombination = ["up", "up", "right"]

//label loop
////when we add a label
//With that small change, those three loops stop running as soon as the combination is found
outerLoop: for option1 in options{
    for option2 in options{
        for option3 in options{
            print("In loop")
            let attempt = [option1, option2, option3]
            
            if attempt == secretCombination{
                print("The secret combo is \(attempt)")
                break outerLoop
                //What we really want to say is “as soon as the combination is found, exit all the loops at once”
            }
        }
    }
}



//When to use break and when to use continue

//When we use continue we’re saying “I’m done with the current run of this loop” – Swift will skip the rest of the loop body, and go to the next item in the loop.

//when we say break we’re saying “I’m done with this loop altogether, so get out completely.” That means Swift will skip the remainder of the body loop, but also skip any other loop items that were still to come.


//good example
var password = "1"
while true {
    password += "1"
    if password == "11111" {
        print("That's a terrible password.")
    }
    break
}

//this wont print text
//breaks after the if statement


//SUMMARY

//We use if statements to check a condition is true. You can pass in any condition you want, but ultimately it must boil down to a Boolean.
//If you want, you can add an else block, and/or multiple else if blocks to check other conditions. Swift executes these in order.
//You can combine conditions using ||, which means that the whole condition is true if either subcondition is true, or &&, which means the whole condition is true if both subconditions are true.
//If you’re repeating the same kinds of check a lot, you can use a switch statement instead. These must always be exhaustive, which might mean adding a default case.
//If one of your switch cases uses fallthrough, it means Swift will execute the following case afterwards. This is not used commonly.
//The ternary conditional operator lets us check WTF: What, True, False. Although it’s a little hard to read at first, you’ll see this used a lot in SwiftUI.
//for loops let us loop over arrays, sets, dictionaries, and ranges. You can assign items to a loop variable and use it inside the loop, or you can use underscore, _, to ignore the loop variable.
//while loops let us craft custom loops that will continue running until a condition becomes false.
//We can skip some or all loop items using continue or break respectively.
