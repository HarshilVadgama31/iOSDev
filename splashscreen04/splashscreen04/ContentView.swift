//
//  ContentView.swift
//  splashscreen04
//
//  Created by Harshil Vadgama on 16/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea(.all)
            Text("Home Screen of App")
                .foregroundStyle(.white)
                .font(.system(size: 30))
                .bold()
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
