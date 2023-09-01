//: [Previous](@previous)

import Foundation
import UIKit


//: ## Part four control flow

//MARK: -1. Print the last three element of an array
let lottoNumbers:[Int] = [10, 9, 8, 7, 6, 5]
let range:Range = 3..<6

for i in range{
    print(lottoNumbers[i])
}


//MARK: -2-1. Print out numbers according to the provided order 5,6,7,8,9,10
let rangeALL = 0...5
let reversedRange = rangeALL.reversed()

for i in reversedRange{
    print(lottoNumbers[i])
}



//MARK: -2-2. Print out numbers according to the provided order 10, 8, 6
for i in rangeALL{
    if i%2 == 0 {
        print(lottoNumbers[i])
    }
}



//MARK: -3. Use while loop to solve question 2
//3-1
var index = 5

while index>=0{
    print(lottoNumbers[index])
    index -= 1
}

//3-2
index = 0
while index<6{
    if index%2 == 0{
        print(lottoNumbers[index])
    }
    index += 1
}



//MARK: -4. Use repeat-while to solve question 2
//4-1
index = 5
repeat{
    print(lottoNumbers[index])
    index -= 1
}while index>=0

//4-2
index = 0
repeat{
    if index%2 == 0{
        print(lottoNumbers[index])
    }
    index += 1
}while index<5



//MARK: -5. The differences between while and repeat-while
//While loop check the condition before excuting the code.
//Repeat while excute the code before checking the iterating condition.
//So given the any index number, repeat while will at least have one(the first iteration) excution compare to while loop.



//MARK: -6. if statement
var isRaining:Bool = false

if isRaining {
    print("It's raining, I don't want to work today")
}else{
    print("Although it's sunny, I still don't want to work today")
}



//MARK: -7. The usage of if else and switch
var jobLevel = 4

if jobLevel == 1{
    print("You are a Member")
}else if jobLevel==2 {
    print("You are a Team Leader")
}else if jobLevel==3 {
    print("You are a Manager")
}else if jobLevel==4 {
    print("You are a Director")
}else {
    print("We don't have this job")
}


switch jobLevel {
case 1: print("You are a Member")
case 2: print("You are a Team Leader")
case 3: print("You are a Manager")
case 4: print("You are a Director")
default: print("We don't have this job")
}











