//
//  ArticleInnerTableViewCell.swift
//  CPBox
//
//  Created by Jonathan Ho on 8/8/18.
//  Copyright © 2018 Jonathan Ho. All rights reserved.
//

import Foundation
import UIKit

class ArticleInnerTableViewCell : UITableViewCell {
    
    @IBOutlet weak var articleTitleLabel: UILabel!
    @IBOutlet weak var articleAuthorLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
