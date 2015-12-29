//
//  Article.swift
//  Menthas
//
//  Created by 斉藤　洸紀　 on 2015/12/29.
//  Copyright © 2015年 Kouki Saito. All rights reserved.
//

import Foundation

struct Article {
    let id: String
    let title: String
    let description: String
    let siteName: String
    let url: String
    let thumbnail: String
    let hatebu: Int
    let categoryName: String
    let categoryColor: String

    init(dictionary: [String: AnyObject]) {
        id = dictionary["_id"] as? String ?? ""
        title = dictionary["page"]?["title"] as? String ?? ""
        description = dictionary["page"]?["description"] as? String ?? ""
        siteName = dictionary["page"]?["site_name"] as? String ?? ""
        url = dictionary["page"]?["url"] as? String ?? ""
        thumbnail = dictionary["page"]?["thumbnail"] as? String ?? ""
        hatebu = dictionary["page"]?["hatebu"] as? Int ?? 0
        categoryName = dictionary["category"]?["name"] as? String ?? ""
        categoryColor = dictionary["category"]?["color"] as? String ?? "#000000"
    }
}