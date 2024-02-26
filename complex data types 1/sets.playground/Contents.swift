import UIKit

// SETS: A WAY TO GROUP DATA
//set – they are similar to arrays, except you can’t add duplicate items, and they don’t store their items in a particular order.

//i.e
let actors = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])

//this we creates an array first, then puts that array into the set.
//this the standard way of creating a set from fixed data.

//Remember, the set will automatically remove any duplicate values, and it won’t remember the exact order that was used in the array.

//how the set orders the array
print(actors)
//printed in a random way every time


//if we want to create an empty set then add onto it:

var arabRap = Set<String>()
arabRap.insert("Wlad Quds")
arabRap.insert("Galbi")
arabRap.insert("Nkd Glg")
arabRap.insert("La Dem")

//why we use sets instead of arrays:
//instead of storing your items in the exact order you specify, sets instead store them in a highly optimized order that makes it very fast to locate items.

//functions:
//1. insert()
//2. contains()
//3. count
//4. sorted() //returns a sorted array containing the the set’s items.


//MORE ON THE DIFFERENCE BETWEEN SETS AND ARRAYS:
//Both sets and arrays are collections of data, meaning that they hold multiple values inside a single variable.
//how they holds the values differs
//sets are unordered and cannot contain duplicates, whereas arrays retain their order and can contain duplicates.

//sets store values in a seemingly random order that optimizes them for fast retrieval.
