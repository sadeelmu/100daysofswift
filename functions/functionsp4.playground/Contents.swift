import UIKit

//How to customize parameter labels

func rollDice(sides:Int, count:Int) -> [Int]{
    //start with an empty array
    var rolls = [Int]()
    
    for _ in 1...count {
        //add each result to array
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    
    //send back all rolls (as the function returns an array)
    return rolls
}

let rolls = rollDice(sides: 6, count:4)
print(rolls)


//This method of naming parameters for external use is so important to Swift that it actually uses the names when it comes to figuring out which method to call


//i.e.

func hireEmployees(name: String){}
func hireEmployees(title: String){}
func hireEmployees(location:String){}
//Yes, those are all functions called hireEmployee(), but when you call them Swift knows which one you mean based on the parameter names you provide.


//when we’re defining the parameters for a function we can actually add two names: one for use where the function is called, and one for use inside the function itself.


//If we add an underscore before the parameter name, we can remove the external parameter label like so:
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}
let string = "HELLO, WORLD"
let result = isUppercase(string)


//i.e.

//func printTimesTables(number: Int) {
//    for i in 1...12 {
//        print("\(i) x \(number) is \(i * number)")
//    }
//}
//
//printTimesTables(number: 5)

//fixed
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)

//There are three things in there you need to look at closely:

//We write for number: Int: the external name is for, the internal name is number, and it’s of type Int.
//When we call the function we use the external name for the parameter: printTimesTables(for: 5).
//Inside the function we use the internal name for the parameter: print("\(i) x \(number) is \(i * number)").


//So, Swift gives us two important ways to control parameter names: we can use _ for the external parameter name so that it doesn’t get used, or add a second name there so that we have both external and internal parameter names.


