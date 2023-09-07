//: [Previous](@previous)

import Foundation
import UIKit


//: # Part four

//MARK: - Fix conforming issue

enum GuessNumberGameError:Error {
    case wrongNumber
}
class GuessNumberGame {
    var targetNumber = 10
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
    }
}



//When a function can throws an error, if we decide to implement/customize the error itself. Use "do try catch" trio to catch errors.
do{
    try GuessNumberGame().guess(number: 20)
}catch GuessNumberGameError.wrongNumber {
    print(" Wrong Number ")
}
    
    


//: [Next](@next)
