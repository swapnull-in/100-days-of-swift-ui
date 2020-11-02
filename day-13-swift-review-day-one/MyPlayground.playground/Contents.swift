import UIKit

var str = "Day 13 – Swift review, day one"

//Variables and constants

//var name = "Tim McGraw"
//    name = "Romeo"

//let name = "Tim McGraw"
//    name = "Romeo"

//Types of Data

var name: String
    name = "Tim McGraw"

var age: Int
    age = 25

var latitude: Double
latitude = 36.166667

var longitude: Double
longitude = -123456786.783333

var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = true

var missABeat = false

//Operators

var a = 10
a = a + 1
a = a - 1
a = a * a

var b = 10
b += 10
b -= 10

var a1 = 1.1
var b1 = 2.2
var c1 = a1 + b1

var name1 = "Tim McGraw"
var name2 = "Romeo"
var both = name1 + " and " + name2

c1 > 3
c1 >= 3
c1 > 4
c1 < 4

var name3 = "Tim McGraw"
name3 == "TIM McGraw"
name3 != "TIM McGraw"

var stayOutTooLate1 = true
stayOutTooLate1
!stayOutTooLate1

//String interpolation

var name4 = "Tim McGraw"
"Your name is \(name4)"

"Your name is \(name), your age is \(age) and your latitude is \(latitude)"

"Your age is \(age) and in another \(age) years you will be \(age * 2)"

//Arrays

var evenNumbers = [2, 4, 6, 8]
var songs: [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3]

songs[0]
songs[1]
songs[2]

type(of: songs)

var songs1 = [String]()
//songs1[0] = "Shake it Off"

var songs2 = ["Shake it Off", "You Belong with Me", "Back to December"]
var songs3 = ["Ashes of Eden", "I Will Not Bow", "Bood"]

var both1 = songs2 + songs3
both1 += ["Everything has Changed"]

print(both1)



