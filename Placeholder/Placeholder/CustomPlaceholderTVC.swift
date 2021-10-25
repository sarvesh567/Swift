//
//  CustomPlaceholderTVC.swift
//  Placeholder
//
//  Created by Sarvesh Patel on 22/10/21.
//

import UIKit
import HGPlaceholders
class CustomPlaceholderTVC: PlaceholderTableViewCell {
    @IBOutlet weak var d: UIButton!
    @IBOutlet weak var dd: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
