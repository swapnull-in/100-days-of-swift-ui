import UIKit

var str = "Day 9 – access control, static properties, and laziness"

//Initializers

struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "Swapnull"


//Referring to the current instance

struct Person {
    var name : String
    
    init(name: String){
        print("\(name) was born")
        self.name = name
    }
}

var person = Person(name: "Swapnil")


