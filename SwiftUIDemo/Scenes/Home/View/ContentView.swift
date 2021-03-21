//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Esraa Abuseada on 26/01/2021.
//

import SwiftUI
import Kingfisher

struct ContentView: View {
    
    @StateObject var viewModel: HomeViewModel
    
    
        init(viewModel: HomeViewModel = .init()) {
            _viewModel = StateObject(wrappedValue: viewModel)
        }

    
    var body: some View {
        HStack (spacing: 230) {
            VStack {
                Text("tuesday,16 mar")
                    
                    .font(.footnote)
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
                
                
                Text("Today")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
            }
            
            Image("logo")
            .resizable()
                .frame(width: 50, height: 50)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
        }.padding(.top, 10)
    
        NavigationView {
            NoSepratorList {
                
                ForEach(0..<viewModel.articles.count, id: \.self) { itemIndex in
                    
                    NavigationLink(destination: DetailsView(article: viewModel.articles[itemIndex])) {
                     
                        CardView(cardData: viewModel.articles[itemIndex])
                    }
                    
                
                }
            }.onAppear(perform: viewModel.getArticles)
            .padding()
            .padding(.top, 10)
            .edgesIgnoringSafeArea(.all)
            
            .navigationBarHidden(true)
            .navigationBarTitle("")
            
            
            
        }.padding(.bottom, 10)
        
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
