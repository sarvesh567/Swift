import UIKit
// MARK: - GENERICS
//Coin flip without generics
func pickOneInt(option1: Int, option2: Int) -> Int{
    let random = Int.random(in: 0...1)
    return random == 1 ? option1 : option2
}
let myInt = pickOneInt(option1: 12, option2: 32)
print(myInt)

func pickOneDouble(option1: Double, option2: Double) -> Double{
    let random = Int.random(in: 0...1)
    return random == 1 ? option1 : option2
}
let myDouble = pickOneDouble(option1: 12.9, option2: 34.9)
print(myDouble)

func pickOne<T>(option1: T,option2: T) -> T{
    let random = Int.random(in: 0...1)
    return random == 0 ? option1: option2
}
let selectedInt = pickOne(option1: 12, option2: 23)
print(selectedInt)
let selectedDouble = pickOne(option1: 87.0, option2: 29.0)
print(selectedDouble)
let selectedString = pickOne(option1: "Sarvesh", option2: "Patel")
print(selectedString)

//Generics with type constraint
func addNumberTogether<T:Numeric>(option1: T, option2: T) -> T{
    return option1 + option2
}
let number = addNumberTogether(option1: 12, option2: 12)
print(number)


struct Movie: Encodable{
    var title: String
}
func serializeData<T: Encodable>(_ value: T) -> Data?{
  return try? JSONEncoder().encode(value)
}
print(serializeData(Movie(title: "Ram")))
protocol Fly {func fly()}
protocol Teleport {func teleport()}
protocol Strenght {func throwObject()}
typealias Superhero = Fly & Teleport & Strenght
struct ElectronMan: Superhero{
    func fly() {
    }
    
    func teleport() {
    }
    
    func throwObject() {
    }
}
struct SuperMan: Fly{
    func fly() {
        
    }
}
func attack<T: Superhero>(_ value: T) {
    
}
let electronMan = ElectronMan()
attack(electronMan)
let superman = SuperMan()
attack(superman)
