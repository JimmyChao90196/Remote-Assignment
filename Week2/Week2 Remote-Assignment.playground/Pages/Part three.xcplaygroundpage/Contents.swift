//: [Previous](@previous)

import Foundation
import UIKit


//: # Part three: Protocol in Swift



//MARK: -1. 2. Struct to conform protocol


protocol PoliceMan{
    func arrestCriminals() -> Void
}


struct Person: PoliceMan {
    
    func arrestCriminals() -> Void {
        print("arrested")
    }
    var name: String?
}



//MARK: -3. 4. 5. Protocal being used as type
protocol ToolMan{
    func fixComputer()->Void
}


struct Engineer: ToolMan{
    func fixComputer() -> Void {
        print("Computer fixed")
    }
}

struct Person02: PoliceMan {
    
    var name: String?
    let toolMan: ToolMan
    
    func arrestCriminals() -> Void {
        print("arrested")
    }
}


//MARK: -6. Combine the techniques above
//The line below indicate my friend "Steve" who has a tool man, who is an Engineer.
var myFriend = Person02(name: "Steve", toolMan: Engineer())








