//
//  MenthasRequestType.swift
//  Menthas
//
//  Created by 斉藤　洸紀　 on 2015/12/29.
//  Copyright © 2015年 Kouki Saito. All rights reserved.
//

import Foundation
import APIKit

protocol MenthasRequestType: RequestType {

}

extension MenthasRequestType {
    var baseURL: NSURL {
        return NSURL(string: "http://menthas.com/")!
    }
}