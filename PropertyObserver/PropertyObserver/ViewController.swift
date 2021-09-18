//
//  ViewController.swift
//  PropertyObserver
//
//  Created by Sarvesh Patel on 17/09/21.
//

import UIKit

class ViewController: UIViewController {

    
    var person: Person?{
        didSet{
            print("called after setting newvalue")
            if let name = person?.name{
                print("New name is \(name) and old name is \(String(describing: oldValue?.name))")
            }
        }
        willSet{
            print("Called before setting the new value")
            if let newValue = newValue?.name {
            print("New name is \(newValue)")
          }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        person = Person(name: "Shem", age: 4)
    }


}

