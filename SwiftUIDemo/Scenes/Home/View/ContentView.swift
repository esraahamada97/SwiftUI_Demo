//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Esraa Abuseada on 26/01/2021.
//

import SwiftUI

struct ContentView: View {
    @State var items: [CardData]
    
    var body: some View {
        List(items.indices) { itemIndex in
            CardView(cardData: self.$items[itemIndex])
                }
                .padding(EdgeInsets(top: 44, leading: 0, bottom: 24, trailing: 0))
                .edgesIgnoringSafeArea(.all)
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(items: CardData.testData)
    }
}
