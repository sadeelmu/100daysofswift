import UIKit

//functions

func greetUser(){
    print("Hi there")
}

greetUser()
var greetCopy = greetUser
greetCopy()

//note:
/* Important: When you’re copying a function, you don’t write the parentheses after it – it’s var greetCopy = greetUser and not var greetCopy = greetUser(). If you put the parentheses there you are calling the function and assigning its return value back to something else
 */


//But what if you wanted to skip creating a separate function, and just assign the functionality directly to a constant or variable?

//closure expression:

let sayHello = {
    print("Say hello")
}

sayHello()


//closure with parameters
let cloPara = { (name:String) -> String in
    "Hi \(name)"
}

//It’s the in keyword, and it comes directly after the parameters and return type of the closure.
//in is used to mark the end of the parameters and return type – everything after that is the body of the closure itsel


//If we were to write that as a type annotation for greetCopy
var greetType: () -> Void = greetUser

/*
 The empty parentheses marks a function that takes no parameters.
 The arrow means just what it means when creating a function: we’re about to declare the return type for the function.
 Void means “nothing” – this function returns nothing. Sometimes you might see this written as (), but we usually avoid that because it can be confused with the empty parameter list.
 */

func getUserData(for id:Int)->String{
    if id == 2002{
        return "Sadeel"
    } else {
        return "dontknow"
    }
}

let data:(Int) -> String = getUserData
let user = data(2002)
print(user)

cloPara("Sadeel")


let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

let captainFirstTeam = team.sorted(by: { (name1:String, name2:String) -> Bool in
    
    if name1 == "Suzanne" {
        return true
    }
    else if name2 == "Suzanne"{
        return false
    }
    
    return name1 < name2
})


//HOW CLOSURES ARE USED:
/*
 Running some code after a delay.
 Running some code after an animation has finished.
 Running some code when a download has finished.
 Running some code when a user has selected an option from your menu.
 */
