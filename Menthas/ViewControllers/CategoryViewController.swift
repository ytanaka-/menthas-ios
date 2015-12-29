//
//  CategoryViewController.swift
//  Menthas
//
//  Created by 斉藤　洸紀　 on 2015/12/27.
//  Copyright © 2015年 Kouki Saito. All rights reserved.
//

import UIKit
import APIKit

class CategoryViewController: UIViewController {

    @IBOutlet weak var articleTableView: ArticleTableView!
    var categoryName = "top"

    override func viewDidLoad() {
        super.viewDidLoad()
        title = categoryName

        let request = GetArticles(categoryName: categoryName)
        Session.sendRequest(request) {
            [weak self] result in
            switch result {
            case .Success(let articles):
                self?.articleTableView.articles = articles
            case .Failure(let error):
                let errorAlert = APIErrorAlertControllerKit.errorAlert(error)
                self?.presentViewController(errorAlert, animated: true, completion: nil)
            }
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
