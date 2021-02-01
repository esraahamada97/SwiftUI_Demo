//
//  ProfileScreenView.swift
//  SwiftUIDemo
//
//  Created by Esraa Abuseada on 01/02/2021.
//

import SwiftUI

struct ProfileScreenView: View {
    init() {
            
            UINavigationBar.appearance().backgroundColor = .clear
        }
    
    var body: some View {
        ZStack {
            Color(.screenleColor)
                            .ignoresSafeArea()
                   NavigationView {
                    
                       ZStack {
                           
                        Color(.screenleColor).ignoresSafeArea()
                           Image("bg_header-shape")
                               .resizable()
                               .frame(width: UIScreen.main.bounds.width, height: 245)
                               .offset( y:  -380)
                           
                           Spacer()
                               .navigationBarItems(
                                   leading:
                                       Button(action: {
                                           print("button pressed")
                                           
                                       }) {
                                           Image("ic_edit")
                                               .frame(width: 30, height: 30)
                                       },
                                   trailing:
                                       Button(action: {
                                           print("button pressed")
                                           
                                       }) {
                                           Image("ic_back-arrow")
                                               .frame(width: 30, height: 30)
                                       }
                               )
                           HStack(alignment: .top, spacing: 12, content: {
                               Text("معلوماتك")
                                   .foregroundColor(Color(.primaryColor))
                                .fontWeight(.bold)
                                .font(.custom("29LT Azer-Bold", size: 22))
                                .padding(.leading, 270)
                            Rectangle()
                                .fill(Color(.rectangleColor))
                                .frame(width: 4, height: 23)
                               
                            
                           }) .offset( y:  -383)
                           
                        
                        ZStack {
                            Color(.primaryColor).ignoresSafeArea()
                            
                                UserInfoView()
                           
                            
                            
                        }.frame(width: 345, height: 620)
                        .cornerRadius(16)
                        .offset( y:  -23)
                        .shadow(color: Color(.shadowColor), radius: 4)
                        
                        UserImageView()

                        
                   }
                    
                   }
                   
                   
                   
               }
               
               .ignoresSafeArea()

    }
}

struct ProfileScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreenView()
    }
}
