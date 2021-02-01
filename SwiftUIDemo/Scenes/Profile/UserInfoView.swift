//
//  UserInfoView.swift
//  SwiftUIDemo
//
//  Created by Esraa Abuseada on 01/02/2021.
//

import SwiftUI

struct UserInfoView: View {

    let results = [
        UserInfo(resultText: "محمد أحمد", textData: "صاحب المنشأة"),
        UserInfo(resultText: "فكرة", textData: "نوع المنشأة"),
        UserInfo(resultText: "التقنية", textData: "القطاع"),
        UserInfo(resultText: "تطبيقات الجوال", textData: "تخصص المنشأة"),
        UserInfo(resultText: "٢٠١٩", textData: "تاريخ التأسيس")]

    var body: some View {
        
        HStack(alignment: .center, spacing: 35, content: {
            
            VStack(alignment: .trailing, spacing: 30, content: {
                
            ForEach(results) { result in
                Text(result.resultText)
                    .foregroundColor(Color(.secondryColor))
                    .font(.custom("29LT Azer-Medium", size: 17))
                    .fontWeight(.bold)
            }
            })
            
            VStack(alignment: .trailing, spacing: 30, content: {
                
            ForEach(results) { result in
                        Text(result.textDta)
                            .foregroundColor(Color(.titleTextColor))
                            .font(.custom("29LT Azer-Regular.", size: 17))
                    
            }
            })
        }).padding(.bottom, 180)
        .padding(.leading, 90)
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}
