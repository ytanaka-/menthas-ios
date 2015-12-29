//
//  CategoryAPI.swift
//  Menthas
//
//  Created by 斉藤　洸紀　 on 2015/12/29.
//  Copyright © 2015年 Kouki Saito. All rights reserved.
//

import Foundation
import APIKit

struct GetArticles: MenthasRequestType {
    typealias Response = [Article]
    let categoryName: String
    let offset: Int

    var method: HTTPMethod {
        return .GET
    }

    var path: String {
        return "\(categoryName)/list"
    }

    var parameters: [String: AnyObject] {
        return ["offset": offset]
    }

    init(categoryName: String, offset: Int = 0) {
        self.categoryName = categoryName
        self.offset = offset
    }


    func responseFromObject(object: AnyObject, URLResponse: NSHTTPURLResponse) -> Response? {
        guard let dictionary = object as? [String: AnyObject] else {
            return nil
        }
        guard let items = dictionary["items"] as? [[String:AnyObject]] else {
            return nil
        }

        return items.map {
            Article(dictionary: $0)
        }
    }
}

struct GetCategories: MenthasRequestType {
    typealias Response = [Category]

    var method: HTTPMethod {
        return .GET
    }

    var path: String {
        return "top/params"
    }

    func responseFromObject(object: AnyObject, URLResponse: NSHTTPURLResponse) -> Response? {
        guard let dictionary = object as? [String: AnyObject] else {
            return nil
        }
        guard let categories = dictionary["category"]?["categories"] as? [String] else {
            return nil
        }

        return categories.map { Category(name: $0) }
    }

}