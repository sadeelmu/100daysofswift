import UIKit

//How to handle errors in functions

//three steps:

//1. Telling Swift about the possible errors that can happen.
//2. Writing a function that can flag up errors if they happen.
//3. Calling that function, and handling any errors that might happen.

///Step 1:
//start by defining the possible errors that might happen. This means making a new enum that builds on Swift’s existing Error type, like this:

enum PasswordError:Error{
    case short, obvious
}

///Step 2:
//Step two is to write a function that will trigger one of those errors. When an error is triggered – or thrown in Swift – we’re saying something fatal went wrong with the function, and instead of continuing as normal it immediately terminates without sending back any value.

func checkPassword(_ password:String) throws -> String{
    if password.count < 5{
        throw PasswordError.short
    }
    
    if password == "12345"{
        throw PasswordError.obvious
    }
    if password.count < 8{
        return "OK"
    }
    else if password.count < 10 {
        return "good"
    }
    else{
        return "Excellent"
    }
}

//The final step is to run the function and handle any errors that might happen. Swift Playgrounds are pretty lax about error handling because they are mostly meant for learning, but when it comes to working with real Swift projects you’ll find there are

//three steps:

// 1. Starting a block of work that might throw errors, using do.
// 2. Calling one or more throwing functions, using try.
// 3. Handling any thrown errors using catch.

//pseudocde:
//do {
//    try x()
//} catch{
//    print("Handle errors here")
//}


//for example
let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}


//If the checkPassword() function works correctly, it will return a value into result, which is then printed out. But if any errors are thrown (which in this case there will be), the password rating message will never be printed – execution will immediately jump to the catch block.

//There are a few different parts of that code that deserve discussion, but I want to focus on the most important one: try. This must be written before calling all functions that might throw errors, and is a visual signal to developers that regular code execution will be interrupted if an error happens.

//When you use try, you need to be inside a do block, and make sure you have one or more catch blocks able to handle any errors. In some circumstances you can use an alternative written as try! which does not require do and catch, but will crash your code if an error is thrown – you should use this rarely, and only if you’re absolutely sure an error cannot be thrown.

//When it comes to catching errors, you must always have a catch block that is able to handle every kind of error


//to catch specific errors
let newString = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}


//When should you write throwing functions?

//Throwing functions in Swift are those that are able to encounter errors they are unable or unwilling to handle. That doesn’t mean they will throw errors, just that it’s possible they can. As a result, Swift will make sure we’re careful when we use them, so that any errors that do occur are catered for.

//Why does Swift make us use try before every throwing function?

//Using Swift’s throwing functions relies on three unique keywords: do, try, and catch. We need all three to be able to call a throwing function, which is unusual – most other languages use only two, because they don’t need to write try before every throwing function.


