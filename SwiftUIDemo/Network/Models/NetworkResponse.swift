//
//  NetworkResponse.swift
//  SwiftUIDemo
//
//  Created by Esraa Abuseada on 16/03/2021.
//

import Foundation

struct NetworkResponse<T: Codable>: Codable {
    
    let status: String?
    let totalResults: Int?
    let articles: T?
    
    enum CodingKeys: CodingKey {
        case status
        case totalResults
        case articles
    }
}
