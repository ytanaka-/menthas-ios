//
//  APIErrorAlertControllerKit.swift
//  Menthas
//
//  Created by 斉藤　洸紀　 on 2015/12/29.
//  Copyright © 2015年 Kouki Saito. All rights reserved.
//

import Foundation
import APIKit

class APIErrorAlertControllerKit {
    static func errorAlert(error: APIError) -> UIAlertController {
        var title: String?
        var message: String?

        switch error {
        case .InvalidBaseURL, .ConfigurationError:
            title = "プログラムエラー"
            message = "プログラムの調子がおかしいようです。"
        case .ConnectionError, .ResponseBodyDeserializationError:
            title = "コネクションエラー"
            message = ""
        case .RequestBodySerializationError, .InvalidResponseStructure, .NotHTTPURLResponse:
            title = "APIエラー"
            message = "APIレスポンスが不正です"
        case .UnacceptableStatusCode(let statusCode, _):
            title = "サーバーエラー(\(statusCode))"
            message = "サーバーの調子がおかしいようです。しばらく時間を置いてやり直してください。"
        }

        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        return alert
    }
}