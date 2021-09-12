import Foundation
class Person{
    var name: String
    var age: Int
    weak var friend: Person?
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    deinit {
        print("\(type(of: self)) \(#function)")
    }
    
    func fetchData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5){ [weak self] in
            print(self?.name)
        }
    }
}
var ram: Person? = Person.init(name: "Ram", age: 27)
var sham:Person? = Person.init(name: "Sham", age: 28)
ram?.friend = sham
sham?.friend = ram

ram = nil
sham = nil


