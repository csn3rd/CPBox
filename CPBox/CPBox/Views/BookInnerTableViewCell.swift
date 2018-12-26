//
//  BookInnerTableViewCell.swift
//  CPBox
//
//  Created by Jonathan Ho on 8/10/18.
//  Copyright © 2018 Jonathan Ho. All rights reserved.
//


import Foundation
import UIKit

class BookInnerTableViewCell : UITableViewCell {
    
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookAuthorLabel: UILabel!
    @IBOutlet weak var bookDescriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
