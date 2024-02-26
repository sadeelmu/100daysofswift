//
//  functionsreview.swift
//  
//
//  Created by Sadeel Muwahed on 16/10/2023.
//

1.Functions let us reuse code easily by carving off chunks of code and giving it a name.
2-All functions start with the word func, followed by the function’s name. The function’s body is contained inside opening and closing braces.
3-We can add parameters to make our functions more flexible – list them out one by one separated by commas: the name of the parameter, then a colon, then the type of the parameter.
4-You can control how those parameter names are used externally, either by using a custom external parameter name or by using an underscore to disable the external name for that parameter.
5-If you think there are certain parameter values you’ll use repeatedly, you can make them have a default value so your function takes less code to write and does the smart thing by default.
6-Functions can return a value if you want, but if you want to return multiple pieces of data from a function you should use a tuple. These hold several named elements, but it’s limited in a way a dictionary is not – you list each element specifically, along with its type.
7-Functions can throw errors: you create an enum defining the errors you want to happen, throw those errors inside the function as needed, then use do, try, and catch to handle them at the call site.

