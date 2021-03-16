//
//  CardView.swift
//  SwiftUIDemo
//
//  Created by Esraa Abuseada on 16/03/2021.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        
        VStack {
                  Image("listimage")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
       
                  HStack {
                      VStack(alignment: .leading) {
                          Text("SwiftUI")
                              .font(.subheadline)
                              .foregroundColor(.secondary)
                          Text("Drawing a Border with Rounded Corners")
                              .font(.title3)
                            .fontWeight(.semibold)
                              .foregroundColor(.primary)
                          Text("Written by Simon Ng")
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
              .padding([.top, .horizontal])
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
