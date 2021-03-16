//
//  CardData.swift
//  SwiftUIDemo
//
//  Created by Esraa Abuseada on 16/03/2021.
//

import Foundation

struct CardData: Identifiable  {
    let id = UUID()
    var image: String
    var category: String
    var heading: String
    var author: String
}

extension CardData {
    static var testData: [CardData] {
        return [
            CardData(image: "listimage", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Written by Simon Ng"),
            CardData(image: "listimage", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Written by Simon Ng"),
            CardData(image: "listimage", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Written by Simon Ng"),
            CardData(image: "listimage", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Written by Simon Ng")
            
        ]
    }
}
