//
//  UserImageView.swift
//  SwiftUIDemo
//
//  Created by Esraa Abuseada on 01/02/2021.
//

import SwiftUI

struct UserImageView: View {
    var body: some View {
        ZStack {
            
        Image("ic_avatar-bg")
            //.padding(.bottom, 600)
       
            
        RoundedRectangle(cornerRadius: 8, style: .continuous)
        .fill(Color(.secondryColor))
        .frame(width: 30, height: 30)
        .padding(.top, 90)
            
            Image("ic_uolpad-photo")
                .padding(.top, 90)
    
        }.frame(width: 100, height: 100)
        .padding(.bottom, 480)
        
    }
}

struct UserImageView_Previews: PreviewProvider {
    static var previews: some View {
        UserImageView()
    }
}
