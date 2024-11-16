//
//  SplashScreenView.swift
//  splashscreen04
//
//  Created by Harshil Vadgama on 16/11/24.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State var isActive: Bool = false
    @State private var size = 0.7
    @State private var opacity = 0.4
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea(.all)
            if isActive{
                ContentView()
            }
            else {
                
                VStack{
                    Image("mascot")
                    Text("Ready To Learn")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .bold()
                        .opacity(0.8)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeInOut(duration: 1.5)){
                        self.size = 1.0
                        self.opacity = 1.0
                    }
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                        withAnimation(.easeIn(duration: 0.5)){
                            self.isActive = true
                        }
                    }
                }
            }
        }
        
        
    }
}

#Preview {
    SplashScreenView()
}
