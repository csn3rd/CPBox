//
//  ListTableViewCell.swift
//  CPBox
//
//  Created by Jonathan Ho on 7/26/18.
//  Copyright © 2018 Jonathan Ho. All rights reserved.
//

import Foundation
import UIKit

class ListTableViewCell : UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var resourceImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
