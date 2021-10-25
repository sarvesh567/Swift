//
//  CarViewModel.swift
//  MVVMDemo
//
//  Created by Sarvesh Patel on 23/09/21.
//

import Foundation
protocol CarDataDelegate: AnyObject {
    func didReceiveCarData(cars: [Car])
}
protocol DiscountEligibilityCalculator {
    func getDiscountEligibility() -> Bool
}
class CarViewModel {
    private var carArray = [Car]()
    weak var delegate: CarDataDelegate?
    func getCaList() {
        Networking().getData(stringUrl: Route.getCarUrl) { cars in
            if let carData = cars{
                self.carArray = carData
                self.delegate?.didReceiveCarData(cars: carData)
            }
        } failure: { error in
            print("Getting Error")
        }

    }
    
   
}
