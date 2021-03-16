//
//  CardData.swift
//  SwiftUIDemo
//
//  Created by Esraa Abuseada on 16/03/2021.
//

import Foundation

struct CardData: Identifiable, Codable  {
    var id = UUID()
    var source: SourceModel
    var title: String
    var description: String
    var urlToImage: String
    
    enum CodingKeys: CodingKey {
        case source
        case title
        case description
        case urlToImage
       
    }
}


struct SourceModel: Codable {
    var id: String
    var name: String
    
    enum CodingKeys: CodingKey {
        case id
        case name
       
    }
}

