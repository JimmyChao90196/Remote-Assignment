import UIKit
import Foundation


//: # Week 3 remote assignment




//MARK: -1.1 Definition of closure
//Closure is very much like function. In fact, in some cases it can even be replaced by function.
//Closure has input parameter, argument, return type and everything, But it doesn't have a name.




//MARK: -1.2 First way to execute a closure
//Most of the time, we encounter closures with higher-order functions.
//For example, in the map(which is a higher order function) function document we can see the following line - map(transform: (String) throws -> T)
//And that line is basically saying the map function needs "a closure that takes a string and spits out any type."

let names = ["Jamie", "Leo", "Geralt", "Chloie"]

//Declaring a closure for map that takes a string and return a string(or any other types)
let transform = {(name: String) -> String in
    
    name + " Lannister"
}

names.map(transform)


//MARK: -1.3 Second way to execute a closure
//If closure itself is the last or only parameter of that function. We can use the trailing closure syntax.
//That massively shorten the syntax.

names.map { name in
    
    "I like " + name
}



//MARK: -1.4 Third way to execute a closure
//Since the closure already knows the input type, we might as well delete it's parameter name and the "in" syntax.

names.map { "I like " + $0 + " Lannister" }






//MARK: -2 Declare numberFilter closure

let isOddNumber = {(num: Int) -> Bool in
    
    !(num % 2 == 0)
}

isOddNumber(10)




//MARK: -3 Pyramid printer

func printTriangle(layers: Int) {

    var iter = 1
    
    while iter <= layers {
        print(String(repeating: "*", count: iter))
        print("")
        iter += 1
    }
}


//Result
printTriangle(layers: 5)

