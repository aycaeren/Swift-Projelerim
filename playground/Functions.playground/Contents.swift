import UIKit

func carpmaFonks(x:Int,y:Int){
  print(x*y)
}
carpmaFonks(x: 10, y: 5)
print("--------")

func kontrolFonks(a:Int,b:Int)->Bool{
    if a<b{
        print("true")
        return true
    }
    else{
        print("false")
        return false
    }
}
kontrolFonks(a: 10, b: 20)
