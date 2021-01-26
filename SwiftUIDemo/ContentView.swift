//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Esraa Abuseada on 26/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 0) {
            Image("bg_header-shape")
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: 219)
                   
            Image("ic_Monshaat-Logo")
                .offset( y: -130)
                .padding(.trailing, 24)
            
            Text("آهلا بك")
                .foregroundColor(Color(.titleTextColor))
                .font(.largeTitle)
                .padding(.trailing, 24)
                .offset(y: -20)
            
            Text("يمكنك تسجيل الدخول بإستخدام معلومات الحساب لدي وزارة التجارة و الإستثمار")
                .foregroundColor(Color(.titleTextColor))
                .padding([.trailing, .leading], 22)
                .padding(.top, 15)
                .multilineTextAlignment(.trailing)
                .lineSpacing(12)
            Spacer().frame(height: 24)
            Button(action: {
                print("login")
            }, label: {
                Text("تسجيل")
                    .font(.title)
                    .foregroundColor(Color(.primaryColor))
            })
            
            .frame(width: UIScreen.main.bounds.width - 50 , height: 48, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color(.secondryColor))
            .cornerRadius(24)
            .padding()
            
            Button(action: {
                print("guest")
                
            }, label: {
                Text("أكمل كزائر")
                    .font(.title)
                    .foregroundColor(Color(.titleTextColor))
            })
            
            .frame(width: UIScreen.main.bounds.width - 50 , height: 48, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color(.primaryColor))
            .cornerRadius(24)
            .padding()
            
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
