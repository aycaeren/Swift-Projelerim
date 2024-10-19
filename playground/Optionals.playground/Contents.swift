import UIKit

var myName : String?
myName?.uppercased()
//------------

var myAge = "5"

var myInt = (Int(myAge) ?? 0) * 5
print(myInt)
print("--------")

if let myNum = Int(myAge){
    print(myNum*5)
}
else{
    print("yanlış giriş")
}
