//
//  ArticleTableView.swift
//  Menthas
//
//  Created by 斉藤　洸紀　 on 2015/12/29.
//  Copyright © 2015年 Kouki Saito. All rights reserved.
//

import UIKit
import APIKit

protocol ArticleTableViewDelegate {
    func articleTableView(tableView: ArticleTableView, selectedArticle article: Article)
    func articleTableViewNeedMoreArticles()
}

class ArticleTableView: UITableView {
    var articleTableViewDelegate: ArticleTableViewDelegate?
    var articles = [Article]() {
        didSet {
            delegate = self
            dataSource = self
        }
    }

    func appendArticles(articles newArticles: [Article]) {
        let sections = NSIndexSet(indexesInRange: NSRange.init(location: articles.count, length: newArticles.count))
        articles = articles + newArticles
        insertSections(sections, withRowAnimation: .None)
    }
}

// MARK: - UITableViewDelegate
extension ArticleTableView: UITableViewDelegate {
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let article = articles[indexPath.section]
        articleTableViewDelegate?.articleTableView(self, selectedArticle: article)
    }

    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section > articles.count - 5 {
            articleTableViewDelegate?.articleTableViewNeedMoreArticles()
        }
    }
}

// MARK: - UITableViewDataSource
extension ArticleTableView: UITableViewDataSource {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return articles.count
    }
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 300
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        view.tintColor = UIColor.clearColor()
    }
    func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = UIColor.clearColor()
    }
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 4
    }
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 4
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Article", forIndexPath: indexPath) as! ArticleTableViewCell
        cell.configureCell(articles[indexPath.section])
        return cell
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
}

// MARK: - UIScrollViewDelegate
extension ArticleTableView: UIScrollViewDelegate {

}