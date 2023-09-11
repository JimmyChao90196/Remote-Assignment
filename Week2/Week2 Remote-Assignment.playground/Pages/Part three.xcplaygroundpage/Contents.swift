//: [Previous](@previous)

import Foundation
import UIKit


//: # Part three: Protocol in Swift



//MARK: -1. 2. Struct to conform protocol


protocol PoliceMan{
    func arrestCriminals()
}


struct Person: PoliceMan {
    
    func arrestCriminals(){
        print("arrested")
    }
    var name: String?
}



//MARK: -3. 4. 5. Protocal being used as type
protocol ToolMan{
    func fixComputer()
}


struct Engineer: ToolMan{
    func fixComputer() {
        print("Computer fixed")
    }
}

struct Person02: PoliceMan {
    
    var name: String?
    let toolMan: ToolMan
    
    func arrestCriminals() {
        print("arrested")
    }
}


//MARK: -6. Combine the techniques above
//The line below indicate that my friend "Steve" who has a tool man, who is an Engineer.
var myFriend = Person02(name: "Steve", toolMan: Engineer())








