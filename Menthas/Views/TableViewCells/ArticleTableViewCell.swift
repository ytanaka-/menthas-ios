//
//  ArticleTableViewCell.swift
//  Menthas
//
//  Created by 斉藤　洸紀　 on 2015/12/29.
//  Copyright © 2015年 Kouki Saito. All rights reserved.
//

import UIKit
import UIColor_Hex_Swift
import SDWebImage

class ArticleTableViewCell: UITableViewCell {

    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var usersLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var referenceLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
    }
    override func setHighlighted(highlighted: Bool, animated: Bool) {
    }

    func configureCell(article: Article) {
        headerView.backgroundColor = UIColor(rgba: article.categoryColor)
        categoryLabel.text = article.categoryName
        usersLabel.text = "\(article.hatebu) Users"
        if let url = NSURL(string: article.thumbnail) {
            thumbnailImageView.sd_setImageWithURL(url)
        }
        titleLabel.text = article.title
        descriptionLabel.text = article.description
        referenceLabel.text = "From: \(article.siteName)"
    }

}
