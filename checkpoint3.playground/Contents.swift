import UIKit

//FIZZ BUZZ
//The problem is called fizz buzz.

//Your goal is to loop from 1 through 100, and for each number:
//If it’s a multiple of 3, print “Fizz”
//If it’s a multiple of 5, print “Buzz”
//If it’s a multiple of 3 and 5, print “FizzBuzz”
//Otherwise, just print the number

//In this instance you need to check for 3 and 5 first because it’s the most specific, then 3, then 5, and finally have an else block to handle all other numbers.

for j in 1...100{
    if j.isMultiple(of: 3) && j.isMultiple(of: 5){
        print("FizzBuzz ")
    }
    else if j.isMultiple(of: 3){
        print("Fizz ")
    }
    else if j.isMultiple(of: 5){
        print("Buzz ")
    }
    else{
        print("\(j) ")
    }
}

print("Or this method:")

for i in 1...100{
    if i%3==0 && i%5==0{
        print("FizzBuzz ")
    }
    else if i%5==0{
        print("Buzz ")
    }
    else if i%3==0{
        print("Fizz ")
    }
    else{
        print("\(i) ")
    }
    
}
