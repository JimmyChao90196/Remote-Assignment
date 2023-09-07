//: [Previous](@previous)

import Foundation
import UIKit


//: ## Part three --collection

//MARK: -1. Initialize string array
var myFriends = [String]()


//MARK: -2. Append things to an array
myFriends.append(contentsOf: ["Ian", "Bomi", "Kevin"])
myFriends.removeAll()
myFriends += ["Ian", "Bomi", "Kevin"]


//MARK: -3. Add things to the end of array
myFriends.append("Michael")


//MARK: -4. Move array item
myFriends.remove(at: 2)
myFriends.insert("Kelvin", at: 0)
myFriends.swapAt(0, 2)



//MARK: -5. Print out all my friends name
for i in 0...3{
    let tempFriend = myFriends[i]
    print(tempFriend)
}


for friend in myFriends {
    print(friend)
}


//MARK: -6. Index out of range
//let ghostFriend = myFriends[5]
// It's impossible to find a friend at index 5, becuase there are total 4 friends of mine. And therefore the maximum index number is 3.
// If we try to obtain the data at index 5, an index out of range error will be shown.


//MARK: -7.8. Get the first and last element of an array
let fistElement = myFriends.first
let lastElement = myFriends.last



//MARK: -9.10.11 Declare a dictionary
var myCountryNumber = [String: Int]()
myCountryNumber = ["US": 1, "GB": 44, "JP": 81]
myCountryNumber.removeAll()

myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81
myCountryNumber

myCountryNumber["GB"] = 0



//MARK: -12. Declare an empty dictionary
var myEmptyDictionary = [String: Int]() //Specify the key type and value type in a square bracket. The use "()" to initialize the empty dictionary.



//MARK: -13 Remove element in dictionary
myCountryNumber.removeValue(forKey: "JP")// To remove elements from dictionary, we can use removeValue function
myCountryNumber["GB"] = nil

myCountryNumber


