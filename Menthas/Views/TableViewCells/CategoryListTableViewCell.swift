//
//  CategoryListTableViewCell.swift
//  Menthas
//
//  Created by 斉藤　洸紀　 on 2015/12/28.
//  Copyright © 2015年 Kouki Saito. All rights reserved.
//

import UIKit

class CategoryListTableViewCell: UITableViewCell {

    @IBOutlet weak var categoryNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .None
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        backgroundColor(selected: selected)
    }

    override func setHighlighted(highlighted: Bool, animated: Bool) {
        super.setHighlighted(highlighted, animated: animated)
        backgroundColor(selected: highlighted)
    }

    func backgroundColor(selected seleceted: Bool) {
        if selected {
            backgroundColor = UIColor(white: 0.2, alpha: 1)
        } else {
            backgroundColor = UIColor.blackColor()
        }

    }

    func configureCell(name: String) {
        categoryNameLabel.text = "# \(name)"
    }
}
