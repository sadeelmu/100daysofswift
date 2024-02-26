import UIKit

//An enum – short for enumeration – is a set of named values we can create and use in our code.
//they are efficient and safe and used lots in code

// enums let us define a new data type with a handful of specific values that it can have.

// Enums are like a custom boolean: we get to list up front the range of values it can have, and Swift will make sure you never make a mistake using them.


//i.e.

enum Weekday{
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.friday
day = Weekday.thursday

//i.e. different syntax

enum Weekend{
    case saturday, sunday
}

//once you assign a value to a variable or constant, its data type becomes fixed – you can’t set a variable to a string at first, then an integer later on

//thus u can do the following

var holiday = Weekend.sunday
holiday = .saturday

//Swift knows that .sunday must refer to Weekend.tuesday because holiday must always be some kind of Weekend.


//benefit of enum:
// Swift stores them in an optimized form

//when we say Weekday.monday Swift is likely to store that using a single integer such as 0, which is much more efficient to store and check than the letters M, o, n, d, a, y.

//Swift can store its enum values very simply, so they are much faster to create and store than something like a string.
