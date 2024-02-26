import UIKit

enum ProjectErrors:Error{
    case outofbounds
    case noroot
}

// write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number.

func intSqrt(testNum:Int)throws -> Int{
    
    if testNum>10000 || testNum<1 {
        throw ProjectErrors.outofbounds
    }
    
    for sqrt in 1...100{
        if sqrt * sqrt == testNum{
            return sqrt
        }
    }
    throw ProjectErrors.noroot
}

print((try intSqrt(testNum: 25)))

//If a function is able to throw errors without handling them itself, you must mark the function as throws before the return type.

