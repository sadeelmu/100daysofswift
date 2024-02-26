import UIKit

//LOOPS

//How to use a for loop to repeat work

//i.e. OVER ARRAYS/DICS/SETS:

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms{
    print("Swift works on \(os).")
}

//That loops over all the items in platforms, putting them one by one into os.

//We haven’t created os elsewhere; it’s created for us as part of the loop and made available only inside the opening and closing braces. It is a loop varaiable and the name os is not a special name.

//To make things easier to understand, we give these things common names:

//1. We call the code inside the braces the loop body
//2. We call one cycle through the loop body a loop iteration.
//3. We call os the loop variable. This exists only inside the loop body, and will change to a new value in the next loop iteration.


//i.e. RANGE
//Rather than looping over an array (or set, or dictionary – the syntax is the same!), you can also loop over a fixed range of numbers. For example, we could print out the 5 times table from 1 through 12 like this:

for i in 1...12{
    print("5 x \(i) is \(5*i)")
}

// the loop variable i, is a common coding convention for “number you’re counting with”.
//The 1...12 part is a range, and means “all integer numbers between 1 and 12, as well as 1 and 12 themselves.” Ranges are their own unique data type in Swift.

//i.e. NESTED LOOPS
//There’s now a nested loop: we count from 1 through 12, and for each number inside there we count 1 through 12 again.

for i in 1...12{
    print("The \(i) times table.")
    
    for j in 1...12{
        print("\(j) x \(i) is \(j*i)")
    }
    
    print()
    //Using print() by itself, with no text or value being passed in, will just start a new line. This helps break up our output so it looks nicer on the screen.
}

//IMPORTANT SYNTAX:
//when you see x...y you know it creates a range that starts at whatever number x is, and counts up to and including whatever number y is.

//DIFF RANGE
//..>
//type of range that counts up to but excluding the final number: ..<

for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}
//Tip: ..< is really helpful for working with arrays, where we count from 0 and often want to count up to but excluding the number of items in the array.

//OTHER RANGE
//one-sided range to say “give me 1 to the end of the array”
let names = ["Piper", "Alex", "Suzanne", "Gloria"]
print(names[1...])


//THE _
//sometimes you want to run some code a certain number of times using a range, but you don’t actually want the loop variable – you don’t want the i or j, because you don’t use it.


var lyric = "FUCK"

for _ in 1...5 {
    lyric += " you"
}

print(lyric)
