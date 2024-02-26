import UIKit

//CHALLENGE:
// to create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.


//remember array must be [datatype]. dont forget the brackets
var arr:[String] = [String]()

arr.append("Dynamite")
arr.append("Really Love")
arr.append("Feel Like Making Love")
arr.append("Protoype")
arr.append("Betray My Heart")
arr.append("Really Love")

let num:Int = arr.count

print("The number of items in the array is \(num).")

let setOfArr:Set<String> = Set(arr)

print(setOfArr)
 
//right!
