//
//  DetailsView.swift
//  SwiftUIDemo
//
//  Created by Esraa Abuseada on 21/03/2021.
//

import SwiftUI

struct DetailsView: View {
    let article: Article
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss() 
        }) {
            HStack(alignment: .center, spacing: 5.0) {
                Image("close")
                    .padding(.leading, 10.0)
                Text("Add to Cart")
                    .foregroundColor(.black)
                    .padding(.all, 10.0)
            }
        }
        .background(Color.gray)
        .cornerRadius(5.0)
        .navigationBarBackButtonHidden(true)
    }
    
}
