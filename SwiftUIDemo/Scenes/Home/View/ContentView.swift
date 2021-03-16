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
            .padding(.top, 120)
            .edgesIgnoringSafeArea(.all)
            
            .navigationBarItems(
                    leading:
                        VStack {
                            Text("tuesday,16 mar")
                                .font(.footnote)
                                .fontWeight(.light)
                                .foregroundColor(.secondary)
                            
                            Text("Today")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            
                        },
                    trailing:
                        Image("logo")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                        .shadow(radius: 10)
                )
            
        }.padding(.bottom, 10)
        
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(items: CardData.testData)
    }
}
