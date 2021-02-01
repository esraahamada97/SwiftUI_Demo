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
        NavigationView {
            
            ScrollView {
                
                ZStack {
                    Color(.screenleColor).ignoresSafeArea()
                    
                    ZStack {
                        
                        Image("bg_header-shape")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width, height: 230)
                            .padding(.bottom, 680)
                        
                        Spacer()
                        
                        
                        HStack(alignment: .top, spacing: 12, content: {
                            Text("معلوماتك")
                                .foregroundColor(Color(.primaryColor))
                                .fontWeight(.bold)
                                .font(.custom("29LT Azer-Bold", size: 22))
                                .padding(.leading, 270)
                            
                            Rectangle()
                                .fill(Color(.rectangleColor))
                                .frame(width: 4, height: 23)
                            
                            
                        }) .padding(.bottom, 650)
                        
                        
                        ZStack {
                            Color(.primaryColor).ignoresSafeArea()
                            
                            UserInfoView()
                            
                            Rectangle()
                                .fill(Color(.secondryColor))
                                .frame(width: 317, height: 0.34)
                                .padding(.top, 110)
                            
                            VStack(alignment: .trailing, spacing: 28, content: {
                                Text("نبذة عنك")
                                    .foregroundColor(Color(.secondryColor))
                                    .fontWeight(.bold)
                                    .font(.custom("29LT Azer-Medium", size: 22))
                                
                                
                                Text("هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً")
                                    .foregroundColor(Color(.titleTextColor))
                                    .font(.custom("29LT Azer-Regular", size: 15))
                                    .multilineTextAlignment(.trailing)
                                    .lineSpacing(4)
                                
                                
                            }).padding(.top, 300)
                            .padding(.leading, 30)
                            .padding(.trailing, 15)
                            
                            
                            
                            
                        }.frame(width: 345, height: 620)
                        .cornerRadius(16)
                        .padding(.top, 80)
                        .shadow(color: Color(.shadowColor), radius: 4)
                        
                        UserImageView()
                        
                        
                    }
                    
                }
            }
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
            .ignoresSafeArea()
        }
    }
}

struct ProfileScreenView_Previews: PreviewProvider {
    static var previews: some View {
        
        ProfileScreenView()
    }
}
