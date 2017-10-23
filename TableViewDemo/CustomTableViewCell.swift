//
//  CustomTableViewCell.swift
//  TableViewDemo
//
//  Created by Vaibhav Sahu on 10/23/17.
//  Copyright © 2017 Vaibhav Sahu. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
