//
//  UserInfo.swift
//  SwiftUIDemo
//
//  Created by Esraa Abuseada on 01/02/2021.
//

import Foundation

struct UserInfo: Identifiable {
    
    var id = UUID()
    var resultText: String
    var textDta: String
    
    init(resultText: String, textData: String) {
        self.resultText = resultText
        self.textDta = textData
    }
    
}
