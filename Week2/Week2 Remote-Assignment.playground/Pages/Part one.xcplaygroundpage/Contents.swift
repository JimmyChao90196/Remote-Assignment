import UIKit
import Foundation


//: # Part 1: Obeject- Oriented Swift


//MARK: -1. Animal class
class Animal{
    let gender: Gender
    
    func eat(){
        print("I eat everything")
    }
    
    init(gender: Gender) {
        self.gender = gender
    }
    
}

enum Gender {
    case male
    case female
    case undefined
}


//MARK: -2. Create subclass
class Elephant: Animal{
    
    override func eat() {
        print("I eat leaves")
    }
}


class Tiger: Animal{
    
    override func eat() {
        print("I eat man")
    }
    
    override init(gender: Gender = .female) {
        super.init(gender: gender)
    }
    
}


class Horse: Animal{
    
    override func eat() {
        print("I eat grass")
    }
}

let torrent = Horse(gender: .female)
torrent.eat()



//MARK: -3. Fix Zoo class

class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: Tiger())


let tiger = Tiger()
let elephant = Elephant(gender: .male)
let horse = Horse(gender: .male)


zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse


//MARK: -4. Instance explain

//Instance is typically refer to the thing that's be instantiate from class or sturct

//Object is typically refer to the instance of class.




//Init in General: When we try to instantiate something from struct, we'll likely to see various options to initialize in auto-completion list. And that's what initializer do. It provide various options for use to initialize an instance.

//Init in struct: In struct, we don't have to create our own initializer even the property values are left undefined. Because it comes with it's own memberwise initializer. Although we still have the option to customize it.

//Init in class: Unlike stuct, class don't have memberwise initializer, we have to define an initializer if all properties values are undefined.



//Designated initializer:
// fact 1: It implement or we can say initialize not only the properties of it's own class, but also all it's super class's properties by calling super class initializer.
// face 2: If a subclass provided default values for all the properties and don't have a designated initializer, then it'll inherit a designated initializer from it's super class.



//MARK: - Comparison Struct and class

//Struct:
//Is value type
//Have meberwise initializer
//Can not be inherit
//The value is copied in memory each time an instance is being create/clone.


//Class:
//Is reference type
//Don't have meberwise initializer
//Can be inherit by another class
//Copy as much object as you want. The data all pointed to the same value in a particular position in memory.


//They both can be comform to certain protocol


//MARK: 6- Comparison of reference type and value type

//structure is value type, each time we copy an instance of an object, the value get's copied as well.
struct Car{
    var wheels: Int = 4
}

var nissan = Car()
var benz = nissan

//Now if I change nissan's value
nissan.wheels = 6

//The benz won't be affected
let wheels = benz.wheels



//class is reference type. All copies of object pointed to the same spot in the stored memory.
class Mammal{
    var furry: Bool = false
    
    func move() -> String{
        "moving"
    }
    
    static func jump() -> String{
        "Jumping"
    }
    
}

let tigerA = Mammal()
let tigerB = tigerA

tigerA.furry

//Now if I change tigerB's property value, tigerA's furry value gets affected as well
tigerB.furry = true
tigerA.furry


//MARK: -7.8 Comparison instance method and type method
//Instance method is a method that can only be called by a instance.
//Type method/properties can be directly access through type itself.

//Self in instance method refers to the current instance. It limit the options and narrow it down to instance properties in auto-completion.
//Self in type/static method refers to type itself. It also limit the options down so we can only access static properties.

//That's why the document said that self keyword disambiguate the line between two subjects above.

struct Tree{
    
    
    static var location: String = "Taiwan"
    var sayHi = "Hello"
    
    func produceFruit() -> String{
        "Drop Apple and say \(self.sayHi)"
    }
    
   static func groth() -> String{
       "Growing in \(self.location)"
    }
    
}

let appleTree = Tree()

appleTree.produceFruit()//This is a instance method
Tree.groth()//This is a type method








