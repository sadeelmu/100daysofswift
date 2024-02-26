import UIKit

//How to use switch statements to check multiple conditions

//using if and else presents three issues with enums specifically
//1. We keep having to write forecast, even though we’re checking the same thing each time.
//2. I accidentally checked .rain twice, even though the second check can never be true because the second check is only performed if the first check failed.
//3. I didn’t check .snow at all, so we’re missing functionality.

//Switch
//lets us check individual cases one by one, but now Swift is able to help out. In the case of an enum, it knows all possible cases the enum can have, so if we miss one or check one twice it will complain.

enum Weather{
    case sun, rain, wind, snow, unkown
}

let forecast = Weather.sun

//we do syntax as follows:
//switch nameOfVariableWeAreCheckingCasesFor

switch forecast{
case .sun:
    print("It is a sunny weather")
case .rain:
    print("Pack an umberalla")
case .wind:
    print("It is a bit chilly")
case .snow:
    print("North Face Time")
case .unkown:
    print("Good luck")
}

//Let’s break that down:

//1. We start with switch forecast, which tells Swift that’s the value we want to check.
//2. We then have a string of case statements, each of which are values we want to compare against forecast.
//3. Each of our cases lists one weather type, and because we’re switching on forecast we don’t need to write Weather.sun, Weather.rain and so on – Swift knows it must be some kind of Weather.
//4. After each case, we write a colon to mark the start of the code to run if that case is matched.
//5. We use a closing brace to end the switch statement.

//SWIFT IS DIFFERENT IN HANDLING SWITCH
//1. All switch statements must be exhaustive, meaning that all possible values must be handled in there so you can’t leave one off by accident.
//2. Swift will execute the first case that matches the condition you’re checking, but no more. Other languages often carry on executing other code from all subsequent cases, which is usually entirely the wrong default thing to do

//NOTE:  all switch statements must be exhaustive: you must ensure all possible values are covered.


//SYNTAX MUST INCLUDE DEFAULT
//DEFAULT:
let place = "Wehdat"

switch place{
case "Gotham":
    print("You are Batman")
case "Amman":
    print("Lol")
case "Paris":
    print("Oui")
default:
    print("Wya")
}
//That default: at the end is the default case, which will be run if all cases have failed to match.

//Remember: Swift checks its cases in order and runs the first one that matches. If you place default before any other case, that case is useless because it will never be matched and Swift will refuse to build your code.


//FALLTHROUGH:
//Second, if you explicitly want Swift to carry on executing subsequent cases, use fallthrough. This is not commonly used, but sometimes – just sometimes – it can help you avoid repeating work.

//THE IDEA IS LIKE THE TWELEVE DAYS OF CHRISTMAS
// without fallthrough
//let day = 5
//print("My true love gave to me…")
//
//switch day {
//case 5:
//    print("5 golden rings")
//case 4:
//    print("4 calling birds")
//case 3:
//    print("3 French hens")
//case 2:
//    print("2 turtle doves")
//default:
//    print("A partridge in a pear tree")
//}

//with fallthrough
//We can use fallthrough to get exactly that behavior: behavior where we print all the options
let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}


//When should you use switch statements rather than if?
// there are three reasons why you might want to consider using switch rather than if:

//1. Swift requires that its switch statements are exhaustive, which means you must either have a case block for every possible value to check (e.g. all cases of an enum) or you must have a default case. This isn’t true for if and else if, so you might accidentally miss a case.
//2. When you use switch to check a value for multiple possible results, that value will only be read once, whereas if you use if it will be read multiple times. This becomes more important when you start using function calls, because some of these can be slow.
//3. Swift’s switch cases allow for advanced pattern matching that is unwieldy with if.
