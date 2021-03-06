//
//  URLSessionType.swift
//  Pods
//
//  Created by Dan Halliday on 18/10/2016.
//
//

import Foundation

/*
 Fat free dependency injection of URLSession and friends
 */

protocol URLSessionType: class {

    func dataTask(with url: URL, completionHandler: @escaping URLSessionDataTaskCallbackType) -> URLSessionDataTaskType
    func dataTask(with request: URLRequest, completionHandler: @escaping URLSessionDataTaskCallbackType) -> URLSessionDataTaskType

}

extension URLSession: URLSessionType {

    func dataTask(with url: URL, completionHandler: @escaping URLSessionDataTaskCallbackType) -> URLSessionDataTaskType {
        return self.dataTask(with: url, completionHandler: completionHandler) as URLSessionDataTask
    }

    func dataTask(with request: URLRequest, completionHandler: @escaping URLSessionDataTaskCallbackType) -> URLSessionDataTaskType {
        return self.dataTask(with: request, completionHandler: completionHandler) as URLSessionDataTask
    }

}
