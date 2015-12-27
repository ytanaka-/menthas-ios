//
//  MainSplitViewController.swift
//  Menthas
//
//  Created by 斉藤　洸紀　 on 2015/12/27.
//  Copyright © 2015年 Kouki Saito. All rights reserved.
//

import UIKit

class MainSplitViewController: UISplitViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

extension MainSplitViewController: UISplitViewControllerDelegate {

}
