//
//  CardView.swift
//  SwiftUIDemo
//
//  Created by Esraa Abuseada on 16/03/2021.
//

import SwiftUI


struct CardView: View {
    
     var cardData: Article
    
    
    
    var body: some View {
    
        VStack {
            
            
            Image("listimage")
                .resizable()
                .scaledToFill()
                .aspectRatio(contentMode: .fit)
            //.frame(height: 180)
            
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
                .frame( height: 400)
        )
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
        .frame( height: 400)
        .edgesIgnoringSafeArea(.all)
    }
    
}


