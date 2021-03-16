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
        NavigationView {
            NoSepratorList {
                ForEach(0..<3) { itemIndex in
                    CardView(cardData: self.$items[itemIndex])
                }
            }.padding()
            .padding(.top, 150)
            .edgesIgnoringSafeArea(.all)
            
            .navigationTitle("esraa")
            
        }
        
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(items: CardData.testData)
    }
}
