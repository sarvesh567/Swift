import UIKit
enum CardType{
    case gold
    case platinum
}
protocol CardNumberProtocol {
    
}
extension String: CardNumberProtocol{
    
}
protocol Card{
    associatedtype CardNumber: CardNumberProtocol
    var type: CardType {get set}
    var limit: Int {get set}
    var number: CardNumber {get set}
    func validateCardNumber(number: CardNumber)
}
struct VisaCard: Card {
    typealias CardNumber = String
    var type: CardType = .gold
    var limit: Int = 20000
    var number: String = "1212 3232 4343 4545"
    func validateCardNumber(number: CardNumber){
        
        
    }
    
}
struct MasterCard: Card {
    typealias CardNumber = String
    var type: CardType = .platinum
    var limit: Int = 40000
    var number: String = "212 232 343 545"
    func validateCardNumber(number: CardNumber){
        
        
    }
    
}

func getLoanEligibility() -> Bool{
    getUserCard().limit >= getLoanEligibilityCard().limit
}
func getUserCard() -> some Card{
    MasterCard()
    
}
func getLoanEligibilityCard() -> some Card{
    VisaCard()
}
