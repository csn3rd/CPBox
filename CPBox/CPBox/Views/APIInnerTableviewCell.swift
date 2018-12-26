//
//  APIInnerTableViewCell.swift
//  CPBox
//
//  Created by Jonathan Ho on 7/26/18.
//  Copyright © 2018 Jonathan Ho. All rights reserved.
//

import Foundation
import UIKit

class APIInnerTableViewCell : UITableViewCell {
    
    @IBOutlet weak var apiLabel: UILabel!
    @IBOutlet weak var bookmarkImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
