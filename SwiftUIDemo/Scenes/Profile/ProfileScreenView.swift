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
               
                   NavigationView {
                       ZStack {
                           Image(systemName: "person.2.fill")
                               .resizable()
                               .aspectRatio(contentMode: .fill)
                               .frame(width: 370, height: 200)
                               .cornerRadius(20.0)
                           
                           Image("bg_header-shape")
                               .resizable()
                               .frame(width: UIScreen.main.bounds.width, height: 219)
                               .offset( y:  -395)
                           
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
                               
                               Text("Placeholder11111")
                           })
                       
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
