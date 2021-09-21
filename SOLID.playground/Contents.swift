import UIKit
/*
 Single Responsibility Principle - SRP
 NOTE - Every software component should have one and only one     responsiblity.
      - Every software component should have one and only one
        reason to change.
 AIM - 1. High Cohesion
 AIM - 2. Loose Coupling
*/
class Square{
    private var side = 4.0
    func caculateArea() -> Double  {
        return side * side
    }
    func catculatePerimeter() -> Double{
        return 4 * side
    }
}
class SquareUI{
    func drawSquare() -> String{
        return "Draw square"
    }
    func rotateSquare() -> String {
        return "Rotate square"
    }
}


class Strudent{
    private var name: String?
    private var id: Int?
    func save() {
        let studentData = StrudentData()
        studentData.save()
    }
    
    var getID: Int{
        get{
            return id ?? 0
        }
    }
    
    var getName: String{
        get{
            return name ?? ""
        }
    }
}

class StrudentData{
    func save() {
        //Save to Database
    }
    
}


// MARK :- SAMPLE PROGRAMME
class Employee{
    private var name: String?
    private var id: String?
    private var address: String?
    
    func save() {
        let employeeData = EmployeeData()
        employeeData.save()
        
    }
    
    func calculateTax() {
        let calculateTax = CalculateTax()
        calculateTax.calculateTax()
    }
   
    var getName: String{
        get{
            return name ?? ""
        }
    }
    
    var getAddress: String{
        get{
            return address ?? ""
        }
    }
    
    var getID: String{
        get{
            return id ?? ""
        }
    }
    
}

class EmployeeData{
    
    func save() {
        //Save employee data to DB
    }
    
}

class CalculateTax{
    func calculateTax() {
        
    }
    
}

/*
 Open Closed Principle - OCP
 NOTE - Softeare component should be closed for mofication but    open for extension.
 IMPORTANT POINT - Closed For Modification
                   New features getting added to the software
                   component, should not have to modify existing code.
                 - Open For extension
                   A software componet should be extendable to add a new feature or to add new behavior to it.
 
 
 

protocol CustomerProfile {
  func isLoyalCustomer()  -> Bool
}

class InsurancePremiumDiscountCalculator{
   
    func  calculatePremiumDiscountPercent(_ customer: CustomerProfile) {
        if customer.isLoyalCustomer(){
            print("All services are avilable for you.")
        }else{
            print("All services are not avilable for you.")
        }
    }
    
}

class HealthInsuranceCustomerProfile: CustomerProfile {
    func isLoyalCustomer() -> Bool {
        return true
    }
    
}

class VehicleInsuranceCustomerProfile: CustomerProfile{
    func isLoyalCustomer()  -> Bool {
        return true
    }
    
}


class HomeInsuranceCustomerProfile: CustomerProfile{
    func isLoyalCustomer()  -> Bool {
        return true
    }
    
}


 */

/*
  Liskov Substitution Principle - LSP
 
 */
class Vehicle{
    func getInteriorWidth() {
        
    }
}
class Car: Vehicle{
    func getCabinWidth() {
      
    }
}
class RacingCar: Car{
    override func getCabinWidth()  {
       
    }
    
    func getCockpitWidth() -> Double{
        return 20.0
    }
}
class CarUtils{
    func carObjects() {
        var myCarArray: [Car] = []
        let first: Car = Car()
        let second = Car()
        let third = RacingCar()
        
        myCarArray.append(first)
        myCarArray.append(second)
        myCarArray.append(third)
        
        for car in myCarArray{
            print(car.getCabinWidth())
        }
        
    }
    
    
}
let carUtils = CarUtils()
carUtils.carObjects()

















