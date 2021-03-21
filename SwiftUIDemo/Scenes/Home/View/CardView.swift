//
//  CardView.swift
//  SwiftUIDemo
//
//  Created by Esraa Abuseada on 16/03/2021.
//

import SwiftUI
import Kingfisher

struct CardView: View {
     var cardData: Article
    
    var body: some View {
        let url = URL(string: cardData.urlToImage ?? "")
        
        VStack {
            
            
            KFImage(url)
                .placeholder {
                   
                    Image("listimage")
                        .resizable()
                        .scaledToFill()
                        .aspectRatio(contentMode: .fill)
                        .opacity(0.3)
                    
                }.resizable()
                .scaledToFill()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                
            Spacer()
            HStack {
                VStack(alignment: .leading) {
                    Text(cardData.source?.name ?? "")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Text(cardData.title ?? "")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                    Text(cardData.description ?? "")
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
                
        )
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
    
        .edgesIgnoringSafeArea(.all)
    }
    
}


