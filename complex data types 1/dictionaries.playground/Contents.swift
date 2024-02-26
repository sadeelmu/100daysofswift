import UIKit

//Dictionaries and arrays are both ways of storing lots of data in one variable, but they store them in different ways:

//dictionaries let us choose a “key” that identifies the item we want to add, whereas arrays just add each item sequentially.

//we use dictionaries as there are flaws to arrays
//Arrays are a great choice when items should be stored in the order you add them, or when you might have duplicate items in there, but very often accessing data by its position in the array can be annoying or even dangerous.
//Swift has a solution for both these problems, called dictionaries.

//Dictionaries don’t store items according to their position like arrays do, but instead let us decide where items should be stored.

//example
//ARRAY
var employee = ["Taylor Swift", "Singer", "Nashville"]
print("Name: \(employee[0])")
print("Job title: \(employee[1])")
print("Location: \(employee[2])")


//DICTIONARY
let employee2 = ["name": "Taylor Swift",
                 "job": "Singer",
                 "location": "Nashville"]


//Swift calls the strings on the left the keys to the dictionary, and the strings on the right are the values.

//When it comes to reading data out from the dictionary, you use the same keys you used when creating it:

print(employee2["name"])

//this will throw error
//Expression implicitly coerced from 'String?' to 'Any’”.
//rather than indixes causing errors
//when you access data inside a dictionary, it will tell us “you might get a value back, but you might get back nothing at all.” Swift calls these optionals because the existence of data is optional - it might be there or it might not.

//Remember, you can’t be guaranteed that a key in a dictionary exists. This is why reading a value from a dictionary might send back nothing – you might have requested a key that doesn’t exist!

//Whenever you read a value from a dictionary, you might get a value back or you might get back nil – there might be no value for that key. Having no value can cause problems in your code, not least because you need to add extra functionality to handle missing values safely, and that’s where dictionary default values come in: they let you provide a backup value to use for when the key you ask for doesn’t exist.


//In order to fix this
// when reading from a dictionary, you can provide a default value to use if the key doesn’t exist.

print(employee2["name",default:"uknown"])


//All the examples have used strings for both the keys and values, but you can use other data types for either of them. For example, we could track which students have graduated from school using strings for names and Booleans for their graduation status:

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false,
]

//or
let olympics = [
    2012:"London",
    2016: "Rio",
    2023:"Qatar"
]

print(olympics[2021, default:"uknown"])


//You can also create an empty dictionary using whatever explicit types you want to store, then set keys one by one:

var salary = [String:Double]()
salary["Sadeel"] = 620.13
salary["Marta"] = 1300.3

//Notice how we need to write [String: Double] now, to mean a dictionary with strings for its keys and doubles for its values.


//REMEMBER:
//Because each dictionary item must exist at one specific key, dictionaries don’t allow duplicate keys to exist. Instead, if you set a value for a key that already exists, Swift will overwrite whatever was the previous value.

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"

//to change it you must overwrite
archEnemies["Batman"] = "Penguin"


// FUNCTIONS OF DICTIONARIES

//count and removeAll() function work the same as they do in arrays

print(archEnemies.count)

archEnemies.removeAll()

print(archEnemies.count)
