//
//  ViewController.swift
//  CustomTabBar
//
//  Created by Sarvesh Patel on 21/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var homeImage: UIImageView!
    @IBOutlet weak var homeTitle: UILabel!
    
    
    @IBOutlet weak var friendImage: UIImageView!
    @IBOutlet weak var friendTitle: UILabel!
    @IBOutlet weak var prefImage: UIImageView!
    @IBOutlet weak var prefLabel: UILabel!
    @IBOutlet weak var settingImage: UIImageView!
    @IBOutlet weak var settingLabel: UILabel!
    @IBOutlet weak var chatImage: UIImageView!
    @IBOutlet weak var chatLabel: UILabel!
    @IBOutlet weak var tabView: UIView!
    @IBOutlet weak var contentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tabUI()
        homeUI()
        
    }
    
    func tabUI()  {
        tabView.layer.applySketchShadow()
    }
    
    func homeUI() {
        guard let homevc = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as? HomeVC else{return}
        contentView.addSubview(homevc.view)
        homevc.didMove(toParent: self)
        
        homeImage.image = UIImage(named: "homeActive")
        friendImage.image = UIImage(named: "groupUnactive")
        prefImage.image = UIImage(named: "preferenceUnactive")
        chatImage.image = UIImage(named: "chatUnactive")
        settingImage.image = UIImage(named: "settingUnactive")
        homeTitle.textColor = .systemBlue
        friendTitle.textColor = .lightGray
        prefLabel.textColor = .lightGray
        chatLabel.textColor = .lightGray
        settingLabel.textColor = .lightGray
        
        
    }
   
    @IBAction func onClickTabBar(_ sender: UIButton) {
        let tag = sender.tag
        if tag == 1 {
           homeUI()
            
        }else  if tag == 2{
            guard let friendvc = self.storyboard?.instantiateViewController(withIdentifier: "FriendVC") as? FriendVC else{return}
            contentView.addSubview(friendvc.view)
            friendvc.didMove(toParent: self)
            homeImage.image = UIImage(named: "homeUnactive")
            friendImage.image = UIImage(named: "groupActive")
            prefImage.image = UIImage(named: "preferenceUnactive")
            chatImage.image = UIImage(named: "chatUnactive")
            settingImage.image = UIImage(named: "settingUnactive")
            homeTitle.textColor = .lightGray
            friendTitle.textColor = .systemBlue
            prefLabel.textColor = .lightGray
            chatLabel.textColor = .lightGray
            settingLabel.textColor = .lightGray
        }else if tag == 3 {
            guard let myprefvc = self.storyboard?.instantiateViewController(withIdentifier: "MyPrefVC") as? MyPrefVC else{return}
            contentView.addSubview(myprefvc.view)
            myprefvc.didMove(toParent: self)
            homeImage.image = UIImage(named: "homeUnactive")
            friendImage.image = UIImage(named: "groupUnactive")
            prefImage.image = UIImage(named: "preferenceActive")
            chatImage.image = UIImage(named: "chatUnactive")
            settingImage.image = UIImage(named: "settingUnactive")
            homeTitle.textColor = .lightGray
            friendTitle.textColor = .lightGray
            prefLabel.textColor = .systemBlue
            chatLabel.textColor = .lightGray
            settingLabel.textColor = .lightGray
            

            
        }else if tag == 4{
            guard let chatvc = self.storyboard?.instantiateViewController(withIdentifier: "ChatVC") as? ChatVC else{return}
            contentView.addSubview(chatvc.view)
            chatvc.didMove(toParent: self)
            homeImage.image = UIImage(named: "homeUnactive")
            friendImage.image = UIImage(named: "groupUnactive")
            prefImage.image = UIImage(named: "preferenceUnactive")
            chatImage.image = UIImage(named: "chatActive")
            settingImage.image = UIImage(named: "settingUnactive")
            homeTitle.textColor = .lightGray
            friendTitle.textColor = .lightGray
            prefLabel.textColor = .lightGray
            chatLabel.textColor = .systemBlue
            settingLabel.textColor = .lightGray
            
        }else{
            guard let settingvc = self.storyboard?.instantiateViewController(withIdentifier: "SetttingVC") as? SetttingVC else{return}
            contentView.addSubview(settingvc.view)
            settingvc.didMove(toParent: self)
            homeImage.image = UIImage(named: "homeUnactive")
            friendImage.image = UIImage(named: "groupUnactive")
            prefImage.image = UIImage(named: "preferenceUnactive")
            chatImage.image = UIImage(named: "chatUnactive")
            settingImage.image = UIImage(named: "settingActive")
            homeTitle.textColor = .lightGray
            friendTitle.textColor = .lightGray
            prefLabel.textColor = .lightGray
            chatLabel.textColor = .lightGray
            settingLabel.textColor = .systemBlue
            

            
        }
    }
    

}

extension CALayer {
  func applySketchShadow(
    color: UIColor = .lightGray,
    alpha: Float = 0.2,
    x: CGFloat = 0,
    y: CGFloat = 0,
    blur: CGFloat = 6,
    spread: CGFloat = 6)
  {
    masksToBounds = false
    shadowColor = color.cgColor
    shadowOpacity = alpha
    shadowOffset = CGSize(width: x, height: y)
    shadowRadius = blur / 2.0
    if spread == 0 {
      shadowPath = nil
    }else {
      let dx = -spread
      let rect = bounds.insetBy(dx: dx, dy: dx)
      shadowPath = UIBezierPath(rect: rect).cgPath
    }
  }
}
