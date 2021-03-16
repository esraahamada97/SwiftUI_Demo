//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Esraa Abuseada on 26/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("bg_header-shape")
            .resizable()
            .frame(width: UIScreen.main.bounds.width, height: 219)
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
