import UIKit

//How to use a while loop to repeat work

//Swift has a second kind of loop called while: provide it with a condition, and a while loop will continually execute the loop body until the condition is false.

//i.e.
var countdown = 10

while countdown>0{
    print("\(countdown)..")
    
    countdown -= 1
}

// the loop body – printing the number and subtracting 1 – will run continually until countdown is equal to or below 0, at which point the loop will finish and the final message will be printed.

//while loops are really useful when you just don’t know how many times the loop will go around.


// useful piece of functionality of Int and Double have:
// random(in:)
// Give that a range of numbers to work with, and it will send back a random Int or Double somewhere inside that range.

//this creates a new integer between 1 and 1000
let id = Int.random(in: 1...1000)

//this creates a random decimal between 0 and 1:
let amount = Double.random(in: 0...1)


//We can use this functionality with a while loop to roll some virtual 20-sided dice again and again, ending the loop only when a 20 is rolled – a critical hit for all you Dungeons & Dragons players out there.

var roll = 0
while roll != 20{
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)!")
}

print("Critical Hit")


//When should you use a while loop?

//for loops are more common when you have a finite amount of data to go through, such as a range or an array,
//while loops are really helpful when you need a custom condition.

//The main difference is that for loops are generally used with finite sequences: we loop through the numbers 1 through 10, or through the items in an array, for example.

//On the other hand, while loops can loop until any arbitrary condition becomes false, which allows them until we tell them to stop

//while loop means we can repeat the same code until…
//…the user asks us to stop
//…a server tell us to stop
//…we’ve found the answer we’re looking for
//…we’ve generated enough data

//That’s where a while loop comes in handy: we can keep the loop going around until we’re ready to exit.


