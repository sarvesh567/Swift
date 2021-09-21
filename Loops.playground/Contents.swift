import UIKit
//For Loops
var names:[String] = ["Sarvesh", "Manisha", "Rashi", "Sourya", "Prisha"]
for name in names {
    print("Hello \(name)")
}
var numberOfLegs = ["spider" : 8, "dog": 4, "human": 2]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName) have \(legCount) legs.")
}
for index in 1...5 {
    print("\(index)")
}
for index in 1..<5  {
    print(names[index])
}
