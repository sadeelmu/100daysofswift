//  functionsp2p1.swift

//  Created by Sadeel Muwahed on 15/10/2023.

//How to provide default values for parameters

import Foundation

//Adding parameters to functions lets us add customization points, so that functions can operate on different data depending on our needs.
//Sometimes we want to make these customization points available to keep our code flexible, but other times you don’t want to think about it – you want the same thing nine times out of ten.

//specify default
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

//another example

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

//characters.removeAll()
//you can also use removeAll like this
characters.removeAll(keepingCapacity: true)
print(characters.count)

//When to use default parameters for functions
//Default parameters let us make functions easier to call by letting us provide common defaults for parameters. So, when we want to call that function using those default values we can just ignore the parameters entirely – as if they didn’t exist – and our function will just do the right thing. Of course, when we want something custom it’s there for us to change.

func findDirections(from:String, to:String, route: String = "fastest", avoidHighways:Bool = false){
    //code here
}

//That assumes that most of the time folks want to drive between two locations by the fastest route, without avoiding highways – sensible defaults that are likely to work most of the time, while giving us the scope to provide custom values when needed.

findDirections(from: "London", to: "g")
findDirections(from: "kursi", to: "weibdeh", route: "scenic")

findDirections(from: "London", to: "weibdeh", route: "scenic", avoidHighways: true)

