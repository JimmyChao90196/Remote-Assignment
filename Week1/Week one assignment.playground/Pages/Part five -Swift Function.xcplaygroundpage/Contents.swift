//: [Previous](@previous)
import PlaygroundSupport
import Foundation
import UIKit


//: ## Part five swift function

//MARK: -1. Distinguish the return type
//The birthday function should return a string, the return type is String
func birthday()->String{
    return "Happy birthday"
}

//The payment function should return a double, the return type is Double
func payment()->Double{
    return 1000.0
}




//MARK: -2. Multiply function
func multiply(a:Double,b:Double=10)->Void{
    print("\(a*b)")
}

multiply(a: 42)




//MARK: -3. Argument label and parameter name
//Parameter name should be used or referenced internally inside the function
//Argument label makes the function less obscure visually and more expressive. That make user easier to pick up the purpose of this function.
//In this case "name" is parameter name and "to" is argument label.

func sayHi(greet:String,to name:String)->Void{
    print("\(greet), how are you \(name)")
}

sayHi(greet: "Hello", to: "Jimmy")




//MARK: -4. Declare greet functin
func greet(person name:String)->String{
    return "Hello, \(name)"
}

greet(person: "Jen")
