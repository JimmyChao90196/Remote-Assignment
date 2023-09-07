//: [Previous](@previous)

import Foundation
import UIKit


//: # Enumerations and optionals

//MARK: -1. Gasoline types in enum

//1-1 ~ 1-3
enum Gasoline: Int{
    
    var price: Double{
        switch self {
        case .oil92: return  31.1
        case .oil95: return  32.6
        case .oil98: return  34.6
        }
    }
    
    func getPrice() -> Double{
        switch self {
        case .oil92: return 31.1
        case .oil95: return 32.6
        case .oil98: return 34.6
        }
    }
    
    case oil92 = 92
    case oil95 = 95
    case oil98 = 98
}



//1-4 Explaination of associated value
//Just like the rawValue, associated value can be bind to each cases in enumeration. That sounds just like raw value. So let's point out some feature of it.
//Associated value won't be limited in just one type.
//Associated value can have different value "type" at each case
//Associated value can have parameter name. But can't have defualt value


enum playerScore{
    
    case playerOne(Score: Double)
    case playerTwo(Int)
    case playerThree(String)
}

let JimmyScore = playerScore.playerOne(Score: 100)




//MARK: -2. Optional
//2-1

class Pet{
    var name: String = "Pickle" //Name property should have string type
}

class People{
    var pet: Pet? //pet property should have optional pet type
}


//2-2, 2-3
let Jimmy = People()
let Eunice = People()

Eunice.pet = Pet()
Jimmy.pet = Pet()

guard let pet = Jimmy.pet else { fatalError("pet found nil") }
print("\(pet.name)")

if let pet = Eunice.pet{
    print("\(pet.name)")
}

