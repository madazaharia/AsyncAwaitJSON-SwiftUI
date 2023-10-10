//
//  GithubError.swift
//  AsyncAwaitJSON
//
//  Created by Madalin Zaharia on 10.10.2023.
//

import Foundation

enum GithubError: Error {
    case invalidUrl
    case invalidResponse
    case invalidData
}
