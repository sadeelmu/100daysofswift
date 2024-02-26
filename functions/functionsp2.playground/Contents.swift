import UIKit
import Cocao

//How to return values from functions

// functions often also send data back – they perform some computation, then return the result of that work back to the call site.

//i.e.
//The sqrt() function accepts one parameter, which is the number we want to calculate the square root of, and it will go ahead and do the work then send back the square root.
let root = sqrt(169)
print(root)


//If you want to return your own value from a function, you need to do two things:
//Write an arrow then a data type before your function’s opening brace, which tells Swift what kind of data will get sent back.
//Use the return keyword to send back your data.


//i.e.
func rollDice() -> Int{
    return Int.random(in: 1...6)
}
//So, that says the function must return an integer, and the actual value is sent back with the return keyword.

let result = rollDice()
print(result)

//Important: When you say your function will return an Int, Swift will make sure it always returns an Int – you can’t forget to send back a value, because your code won’t build.

//Let’s try a more complex example: do two strings contain the same letters, regardless of their order? This function should accept two string parameters, and return true if their letters are the same – so, “abc” and “cab” should return true because they both contain one “a”, one “b”, and one “c”.


func sameString(stringOne:String, stringTwo:String) -> Bool{
    //way one:
//    var flag:Bool = false
//    if stringOne.sorted() == stringTwo.sorted(){
//        flag = true
//    }
//    return flag
   
    //way two:
    //return stringOne.sorted() == stringTwo.sorted()
    
    // when a function has only one line of code, we can remove the return keyword entirely,
    stringOne.sorted() == stringTwo.sorted()
}

let string1 = "abc"
let string2 = "cba"
print(sameString(stringOne: string1, stringTwo: string2))


//Let’s try a third example. Do you remember the Pythagorean theorem from school? It states that if you have a triangle with one right angle inside, you can calculate the length of the hypotenuse by squaring both its other sides, adding them together, then calculating the square root of the result

func pythagorean(sideOne: Double, sideTwo:Double) -> Double{
    let squrOne = sqrt(sideOne)
    let squrTwo = sqrt(sideTwo)
    
    return sqrt(squrOne+squrTwo)
}

print(pythagorean(sideOne: 1.5, sideTwo: 2.4))

//the way he did it
func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pythagoras(a: 1.5, b: 2.4)
print(c)

//or
func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

//When is the return keyword not needed in a Swift function?
//We use the return keyword to send back values from functions in Swift, but there is one specific case where it isn’t needed: when our function contains only a single expression.

func greet(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}

Letting us put conditional functionality into a single line of code is where the ternary operator really shines. And, because SwiftUI uses single expression functions quite a lot, this means ternary operators get used in SwiftUI quite a lot too.


