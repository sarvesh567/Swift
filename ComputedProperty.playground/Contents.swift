import Foundation
/*
let pizzaInInches = 10
var numberOfSlice: Int{
    get{
        return pizzaInInches - 4
    }
    set{
         print(newValue)
    }
}
print(numberOfSlice)
numberOfSlice = 4

let side: Double = 12.0
var area: Double{
    get{
        return side * side
    }set{
      print(newValue)
    }
}
print(area)
area = 1.0


var length = 23
var breadth = 17
var perimeter: Int{
    get{
        return 2 * (length + breadth)
    }
}
print(perimeter)

var salaryPerYear = 20000
var salaryperWeek: Int{
    get{
        return salaryPerYear * 11
    }set(newSalaryperWeek){
        return salaryPerYear = newSalaryperWeek * 52
    }
}
salaryperWeek = 10

struct Employee{
     var annualSalary = 20000
     var bonus = 2
     var weaklySalary: Int{
        get{
            return (annualSalary * bonus) / 52
        }set(newSalary){
            self.annualSalary = newSalary * 52
        }
    }
}
var sarvesh = Employee()
print(sarvesh.weaklySalary)
sarvesh.weaklySalary = 1000
print(sarvesh.annualSalary)
 print(salaryperWeek)
 */

class Rectangle{
    var width = 0.0
    var height = 0.0
    
    var area: Double{
        get{
            return width * height
        }
        set{
            self.width = sqrt(newValue)
            self.height = sqrt(newValue)
        }
    }
}
let myRectangle = Rectangle()
print(myRectangle.area)
myRectangle.area = 144
print(myRectangle.width)
print(myRectangle.height)

