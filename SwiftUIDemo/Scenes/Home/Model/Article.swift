//
//  Article.swift
//  SwiftUIDemo
//
//  Created by Esraa Abuseada on 21/03/2021.
//

import Foundation

struct Article: Identifiable, Codable {
    var id = UUID()
    let source: Source?
    let author: String?
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
    let content: String?

    enum CodingKeys: String, CodingKey {

        case source = "source"
        case author = "author"
        case title = "title"
        case description = "description"
        case url = "url"
        case urlToImage = "urlToImage"
        case publishedAt = "publishedAt"
        case content = "content"
    }
}

struct Source : Codable {
    let id: String?
    let name: String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
    }
}
