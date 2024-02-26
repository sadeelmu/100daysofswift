import UIKit

///How to return multiple values from functions

//When you want to return a single value from a function, you write an arrow and a data type before your function’s opening brace, like this:
func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

// That compares a string against the uppercased version of itself. If the string was already fully uppercased then nothing will have changed and the two strings will be identical, otherwise they will be different and == will send back false.

//If you want to return two or more values from a function, you could use an array. For example, here’s one that sends back a user’s details:

//ARRAY
func arrGetUser() -> [String]{
    ["Kanye", "West"]
}

let arrUser = arrGetUser()
print(arrUser)
print("Name: \(arrUser[0]) \(arrUser[1])")

//DICTIONARY
func dicGetUser() -> [String:String]{
    ["firstName": "Kanye",
     "lastName": "West"]
}

let dicUser = dicGetUser()
print(dicUser)
print("Name: \(dicUser["firstName", default:"anon"]) \(dicUser["lastName", default: "anon"])")


//Both of these solutions are pretty bad, but Swift has a solution in the form of tuples. Like arrays, dictionaries, and sets, tuples let us put multiple pieces of data into a single variable, but unlike those other options tuples have a fixed size and can have a variety of data types.

//TUPLES
func getUser()->(firstName:String, secondName:String){
    (firstName:"Kanye", secondName:"West")
}

let user = getUser()
print(user)
print("Name: \(user.firstName) \(user.secondName)")

//Let’s break that down…

//Our return type is now (firstName: String, lastName: String), which is a tuple containing two strings.
//Each string in our tuple has a name. These aren’t in quotes: they are specific names for each item in our tuple, as opposed to the kinds of arbitrary keys we had in dictionaries.
//Inside the function we send back a tuple containing all the elements we promised, attached to the names: firstName is being set to “Taylor”, etc.
//When we call getUser(), we can read the tuple’s values using the key names: firstName, lastName, etc.

//DIFFERENCE BETWEEN TUPELS AND DICTIONARIS:

//When you access values in a dictionary, Swift can’t know ahead of time whether they are present or not. Yes, we knew that user["firstName"] was going to be there, but Swift can’t be sure and so we need to provide a default value.
//When you access values in a tuple, Swift does know ahead of time that it is available because the tuple says it will be available.
//We access values using user.firstName: it’s not a string, so there’s also no chance of typos.
//Our dictionary might contain hundreds of other values alongside "firstName", but our tuple can’t – we must list all the values it will contain, and as a result it’s guaranteed to contain them all and nothing else.

//So, tuples have a key advantage over dictionaries: we specify exactly which values will exist and what types they have, whereas dictionaries may or may not contain the values we’re asking for.



//There are three other things it’s important to know when using tuples.

//1.
//First, if you’re returning a tuple from a function, Swift already knows the names you’re giving each item in the tuple, so you don’t need to repeat them when using return. So, this code does the same thing as our previous tuple:

func sadeel() -> (age:Int, name:String){
    (21, "Sadeel")
}
print(sadeel())

//2.
//Second, sometimes you’ll find you’re given tuples where the elements don’t have names. When this happens you can access the tuple’s elements using numerical indices starting from 0, like this:
func tupleGetUser() -> (String, String) {
    ("Taylor", "Swift")
}

let tupleUser = tupleGetUser()
print("Name: \(user.0) \(user.1)")

//3.
//Finally, if a function returns a tuple you can actually pull the tuple apart into individual values if you want to.
func pull()->(one:String, two:String, three: Int){
    (one:"One", two:"two", three:3)
}

let x = pull()
let one = x.one
let two = x.two
print("\(one) \(two)")

//or
let (_, _, i) = pull()
print(i)

//When is the return keyword not needed in a Swift function?

