//
//  CardView.swift
//  SwiftUIDemo
//
//  Created by Esraa Abuseada on 16/03/2021.
//

import SwiftUI

struct CardView: View {
    @Binding var cardData: CardData
    

    
    var body: some View {
        
        VStack {
            Image(cardData.image)
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                .frame(height: 300)
Spacer()
                  HStack {
                      VStack(alignment: .leading) {
                        Text(cardData.category)
                              .font(.subheadline)
                              .foregroundColor(.secondary)
                        Text(cardData.heading)
                              .font(.title3)
                            .fontWeight(.semibold)
                              .foregroundColor(.primary)
                        Text(cardData.author)
                              .font(.caption)
                              .foregroundColor(.secondary)
                            .multilineTextAlignment(.leading)
                            .lineLimit(2)
                      }
                      .layoutPriority(100)
       
                      Spacer()
                  }
                  .padding()
              }
        
        .cornerRadius(10)
        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
                                .frame( height: 400)
                        )
              ///.padding([.top, .horizontal])
        //.fixedSize(horizontal: false, vertical: true)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
        .frame( height: 400)
        .edgesIgnoringSafeArea(.all)
    }
}

//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView(cardData: $cardData)
//    }
//}
