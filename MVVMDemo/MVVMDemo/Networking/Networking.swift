//
//  Service.swift
//  MVVMDemo
//
//  Created by Sarvesh Patel on 23/09/21.
//

import Foundation
class Networking{
    func getData(stringUrl: String, success: @escaping ([Car]?) -> (), failure: @escaping (String?) -> ()){
        //CREATE_URL
        if let url = URL(string: stringUrl){
            //Create URLSession
            let session = URLSession(configuration: .default)
            //GIVE THE SESSION A TASK
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil{
                    print(error?.localizedDescription as Any)
                    failure("Something went wrong")
                    return
                }
                guard let data = data else {return}
                do{
                    let carData = try JSONDecoder().decode([Car].self, from: data)
                    success(carData)
                    
                }catch{
                    print(error.localizedDescription)
                    failure("Invalid json")
                }
            }
            //START TASK
            task.resume()
        }
        
        
    }
    
}
