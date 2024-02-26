import UIKit

func showWelcome(){
    print("Welcome to the app")
    print("other print statement")
}


//function syntax:
//It starts with the func keyword, which marks the start of a function.
//We’re naming the function showWelcome. This can be any name you want, but try to make it memorable – printInstructions(), displayHelp(), etc are all good choices.
//The body of the function is contained within the open and close braces, just like the body of loops and the body of conditions.

//the () are the functions site
//parentheses actually do? Well, that’s where we add configuration options for our functions – we get to pass in data that customizes the way the function works, so the function becomes more flexible.

//i.e
//random() is a function, and the (in: 1...20) part marks configuration options
//without that we’d have no control over the range of our random numbers, which would be significantly less useful.

//i.e
let number = 139

if number.isMultiple(of:2){
    print("Even")
}else{
    print("Odd")
}

//We can make our own functions that are open to configuration, all by putting extra code in between the parentheses when we create our function.
//i.e.

//number: Int inside the parentheses? That’s called a parameter, and it’s our customization point
//There both number and end are parameters: they are placeholder names that will get filled in with values when the function is called, so that we have a name for those values inside the function.
func printTimesTables(number:Int, end:Int){
    for i in 1...end{
        print("\(i) x \(number) is \(i*number)")
    }
}

//call function pass it the parameter
//when printTimesTables() is called, we need to explicitly write number: 5 – we need to write the parameter name as part of the function call.
//ask Swift to call the function you must always pass the parameters in the order they were listed when you created the function.
printTimesTables(number:5, end:20)
//There the 5 and 20 are arguments: they are the actual values that get sent into the function to work with, used to fill number and end.

//So, we have both parameters and arguments: one is a placeholder the other is an actual value, so if you ever forget which is which just remember Parameter/Placeholder, Argument/Actual Value.


//What code should be put in a function?

There are three times you’ll want to create your own functions:

The most common time is when you want the same functionality in many places. Using a function here means you can change one piece of code and have everywhere that uses your function get updated.
Functions are also useful for breaking up code. If you have one long function it can be hard to follow everything that’s going on, but if you break it up into three or four smaller functions then it becomes easier to follow.
The last reason is more advanced: Swift lets us build new functions out of existing functions, which is a technique called function composition. By splitting your work into multiple small functions, function composition lets us build big functions by combining those small functions in various ways, a bit like Lego bricks.

//How many parameters should a function accept?
//when a function takes many parameters you need to start asking whether that function is perhaps doing a bit too much work.

//Does it need all  of those parameters?
//Could that function be split up into smaller functions that take fewer parameters?
//Should those parameters be grouped somehow?
//We’ll look at some techniques for solving this later on, but there’s an important lesson to be learned here: this is called a “code smell” – something about our code that suggests an underlying problem in the way we’ve structured our program.


