//: Playground - noun: a place where people can play

import UIKit

//step 1: declare the protocol - this declares it and gives it a name.  It declares that I will implement any/all properties/methods that it declares
protocol TextDescription {
    var textDescription: String { get }
}

//this "TextDescription" is how the Person class "adopts" the "TextDescription" protocol
class Person : TextDescription {
    
    var name: String
    var height: Double
    var favoriteFood: String
    
    //this computed property implements the TextDescription protocol
    var textDescription: String {
        return "Name: \(jim.name) \nHeight: \(jim.height) \nFavorite Food: \(jim.favoriteFood)"
    }
    
    init(name: String, height: Double, favoriteFood: String) {
        self.name = name
        self.height = height
        self.favoriteFood = favoriteFood
    }
    
}
//this is an instance of the Person class and here it is assigning properties to values
let jim = Person(name: "Jim", height: 64.0, favoriteFood: "Pasta")

print(jim.textDescription)
//Name: Jim
//Height: 64.0
//Favorite Food: Pasta

class Building: TextDescription {
    var address: String
    var height: Double
    var textDescription: String {
        return "Address: \(self.address) \nHeight: \(self.height)"
    }
    init(address: String, height: Double) {
        self.address = address
        self.height = height
    }
}
let library = Building(address: "Main Street", height: 20.0)
print(library.textDescription)
//Address: Main Street
//Height: 20.0



protocol PrettyDescription {
    
    var description: String { get }
    
}



class Animal {
    
    var name: String
    var height: Double
    var favoriteFood: String
    
    init(name: String, height: Double, favoriteFood: String) {
        self.name = name
        self.height = height
        self.favoriteFood = favoriteFood
    }
    
}

let prettyThings: [PrettyDescription] = []

for prettyThing in prettyThings {
    
    print(prettyThing.description)
    
}


