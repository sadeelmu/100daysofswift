import UIKit

//ARRAYS

//can automatically adapt to hold as many as you need, and always hold data in the order you add it.
//can only hold one type of data
// 1. int
// 2. double
// 3. string
//... and so on

//example arrays

var favsongs = ["Supernature", "Vitamin C", "Art for Art's Sake"]

let favnums = [13, 7, 3, 9, 26]

let favtemps = [21.3, 15.5, -2.4]
            

//When it comes to reading values out from an array, we ask for values by the position they appear in the array. The position of an item in an array is commonly called its index.
//The index of an array starts counting at 0

//example of reading from an array
print("My favorite song is \(favsongs[0])")

//if the array is created with var, aka a variable we can use function append() to add to it

favsongs.append("Love in C Mior")

//When reading from an array or adding to an array you must stick to on data type


//STARTING WITH AN EMPTY STRING
//you must give it a type <T>
var favmovies = Array<String>()
favmovies.append("Climax")

//Arrays are so common in Swift that there’s a special way to create them: rather than writing Array<String>, you can instead write [String]. So, this kind of code is exactly the same as before:

var favbooks = [String]()
favbooks.append("A Little Life")

//Swift’s type safety means that it must always know what type of data an array is storing.

//That might mean being explicit by saying albums is an Array<String>, but if you provide some initial values Swift can figure it out for itself:

var albums = ["Swimming"]
albums.append("The Divine Feminine")

//FUNCTIONS OF ARRAYS

//1) .append()

//2) .count
//to read how many items are in an array
print(albums.count)


//3) .remove(at:)
//to remove one item at a specific index in an array

//4) .removeAll()
//to remove everything in an array

var interns = ["Sadeel", "Wisem", "Samar"]
print(interns.count)

interns.remove(at: 1)
print(interns.count)

interns.removeAll()
print(interns.count)


//5) .contains()
//you can check whether an array contains a particular item by using contains()
let moviesToWatch = ["Barbie", "Asteriod City", "Oppenhimer"]
print(moviesToWatch.contains("Barbie"))

//6) .sorted()
//you can sort an array using sorted()
//That returns a new array with its items sorted in ascending order, which means alphabetically for strings but numerically for numbers – the original array remains unchanged.

let citiesToVisit = ["Berlin", "Geneva", "Paris", "Naechutel", "Amestradam"]
print(citiesToVisit.sorted())


//7) .reversed()
// you can reverse an array by calling reversed() on it:
let toBuy = ["Sambas", "Birks", "Dickies", "Carhartt"]
let reversed = toBuy.reversed()

print(reversed) //RersedCollection<Array<String>>

//When you reverse an array, Swift is very clever – it doesn’t actually do the work of rearranging all the items, but instead just remembers to itself that you want the items to be reverse. So it will not be a simple array anymore
