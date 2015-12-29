//
//  CategoryViewController.swift
//  Menthas
//
//  Created by 斉藤　洸紀　 on 2015/12/27.
//  Copyright © 2015年 Kouki Saito. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {

    @IBOutlet weak var articleTableView: ArticleTableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        articleTableView.articles = (0..<10).map {
            Article(id: "\($0)", title: "title\($0)", description: "description\($0)", siteName: "Qiita", url: "http://google.com", thumbnail: "http://cdn.qiita.com/assets/qiita-fb-a1b4a208593dbf5743d68ed2a86e63b5.png", hatebu: 30, categoryName: "Python", categoryColor: "#1f3f5a")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
