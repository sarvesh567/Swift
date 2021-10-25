//
//  CarVTC.swift
//  MVVMDemo
//
//  Created by Sarvesh Patel on 23/09/21.
//

import UIKit

class CarTVC: UITableViewCell {
    @IBOutlet weak private var carNameLabel: UILabel!
    @IBOutlet weak private var carImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func setData(car: Car) {
        self.carNameLabel.text = car.modelName
        carImage.image = ImageLoader.shared.cacheImage(from: URL(string: car.carImageUrl ?? ""))
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
