

import Foundation
import UIKit


//: ## Part two --swift Basic

//MARK: - 1. The difference between let and var
// let is a constant. It can not be changed after the declaration.
// While var stands for variable. The value that store within a variable, can be changed and override any time.



//MARK: - 2. Calculate a circumference and store it in a variable
var radius:Double = 5
let pi:Double = Double.pi
let circumference = 2 * pi * radius

print(circumference)



//MARK: - 3. Average calculation
let x = 10
let y = 6

let average = (x + y) / 2



//MARK: - 4-1. Convert Int to Double
let recordSystem:Double = Double(average)



//MARK: - 4-2. The different between 10/3 and 10.0/3.0
var integerDivision = (10/3)
var doubleDivision = (10.0/3.0)
// (10/3) will return a rounded integer to us
// (10.0/3.0) And this will give us a double


//MARK: - 5. Remainder calculation
let numA = 10
let numB = 3

let remainder = 10%3



//MARK: -6. Specify data type manually
var flag:Bool = true
var inputString:String = "Hello world"
let bitsInBite:Int = 8
let averageScore:Double = 86.8



//MARK: -7. Type inference explaination
//Type inference means swift can determine and guess the data type based on the input value we provided. We don't have to manually decide the data type.



//MARK: -8. Type mis-match
var phoneNumber = 0987654321
//phoneNumber = "Hello world"

//The code above is likely to get an error of type mis-match. The first line we declare a phoneNumber with the value of 0987654321. Without specify the type of the phoneNumber variable. Type inference will then decide the type according to the input value, which is integer.

//So when we want to override the value with a string, swift will then complain loudly.



//MARK: -9. Compound operator
var salary = 22000
salary += 28000



//MARK: -10. Usage of equal operator
var target = 10

if target == 10{
    print("Awesome, that's a perfect 10")
}

//Equal operator in swift is written as "==", we can also call it a compare operator.
//Same as >,<,<=,>= ... they are all compare operator
