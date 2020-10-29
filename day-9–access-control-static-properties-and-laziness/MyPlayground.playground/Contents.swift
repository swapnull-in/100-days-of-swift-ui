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




