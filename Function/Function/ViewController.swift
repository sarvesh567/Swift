//
//  ViewController.swift
//  Function
//
//  Created by Sarvesh Patel on 20/09/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Family.getFamilyMember()
        Family.getFatherName()
        
    }


}

class PreviousFamily: Family{
    override class func getFamilyMember() {
        print("Now we have 11 member in or family")
    }

}
// Class Function  - Overrridable
// Static Function - Non-Overrridable

class Family {
    class func getFamilyMember(){
        print("we have ten member in my family")
    }
    static func getFatherName() {
        print("My father name is Ram bahadur Patel")
    }
}
