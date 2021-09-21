import UIKit
class Developer {
    var firstname: String = ""
    var lastname: String = ""
    var position = "Junior Developer"

    
    var salary: Double{
        willSet{
            print("called before value changed")
            print("New Value : \(newValue)")
            //newvalue
            if salary > 60000{
                position = "Senior Developer"
            }
        }
        didSet{
            print("called before value changed")
            print("New Value : \(oldValue)")
            //newvalue
            if salary > 60000{
                position = "Senior Developer"
            }
        }
        
    }
    var monthlySalary: Double{
        get{
            return salary / 12
        }
        set{
            salary = newValue * 2
        }
    }
   
    init(firstname: String) {
        self.firstname = firstname
        lastname = ""
        salary = 0
    }
    
    init(firstname: String, lastname: String) {
        self.firstname = firstname
        self.lastname = lastname
        salary = 0
        
    }
    
    init(firstname: String, lastname: String, salary: Double) {
        self.firstname = firstname
        self.lastname = lastname
        self.salary = salary
    }
    
    func requestRaise(inTheAmountof amount: Double) {
        salary += amount
    }
}
let developer = Developer(firstname: "Sarvesh", lastname: "Patel", salary: 24)
print(developer.salary)
print(developer.monthlySalary)
developer.monthlySalary = 36
print(developer.salary)
developer.requestRaise(inTheAmountof: 80000)
print(developer.position)
developer.requestRaise(inTheAmountof: 80000)
print(developer.position)
