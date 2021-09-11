import UIKit
class Person{
    var name: String
    var gender: String
    var color: String
    var martialStatus: Bool
    init(name: String, gender: String, color: String, martialStatus: Bool) {
        self.name = name
        self.gender = gender
        self.color = color
        self.martialStatus = martialStatus
    }
    func play(sport: String){
        print("I love to play \(sport)")
    }
    func play(instrument: String) {
            
    }
}
class Math{
    let a: Int
    let b: Int
    
    // MARK: - ENCAPULATION
    private var result: Int?
    init(a: Int , b: Int) {
        self.a = a
        self.b = b
    }
    func add() {
        result = a + b
    }
    func displayResult() {
        print("Result: \(result ?? 0)")
    }
}
let calculation = Math(a: 3, b: 2)
calculation.add()
calculation.displayResult()

class Men: Person{
    override init(name: String, gender: String, color: String, martialStatus: Bool) {
        super.init(name: name, gender: gender, color: color, martialStatus: martialStatus)
       
    }
}
let ram = Men(name: "Ram", gender: "male", color: "White", martialStatus: true)
print(ram.name)

class Player{
    var name: String?
    init(name: String) {
        self.name = name
    }
    func play() {}
}
class BatsMan: Player {
    override func play() {
        bat()
    }
    private func bat()  {
        print("\(String(describing: name)) is batting")
    }
}

class Bowlwer: Player {
    override func play() {
        bowl()
    }
    private func bowl()  {
        print("\(String(describing: name)) is batting")
    }
}

class CricketTeam{
    let name: String
    let team: [Player]
    init(name: String, team: [Player]) {
        self.name = name
        self.team = team
    }
}
