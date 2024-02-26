import UIKit

///Closures
//You can assign functionality directly to a constant or variable like this:

let sayHello = {
    print("Hi there")
}

sayHello()

//In that code, sayHello is a closure – a chunk of code we can pass around and call whenever we want.

//If you want the closure to accept parameters, they must be written inside the braces:
let parClosure={ (name:String)->String in
    "Hi \name"
}

//The in is used to mark the end of the parameters and return type – everything after that is the body of the closure itself.

//i.e.

let team = ["Sadeel", "Ahmad", "Layan", "Tareq"]

let onlyT = team.filter( {(name:String)->Bool in
    return name.hasPrefix("T")
})
//Inside the closure we list the parameter filter() passes us, which is a string from the array. We also say that our closure returns a Boolean, then mark the start of the closure’s code by using in – after that, everything else is normal function code.


///Trailing closures and shorthand syntax
let newOnlyT = team.filter({(name:String) -> Bool in
    name.hasPrefix("T")
})

//We can go further using special syntax called trailing closure syntax, which looks like this:

let specialOnlyT = team.filter{name in
    name.hasPrefix("T")
}


///Structs
//Structs let us create our own custom data types, complete with their own properties and methods:


