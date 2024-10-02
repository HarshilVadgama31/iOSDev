//
//  ContentView.swift
//  profileapp01
//
//  Created by Harshil Vadgama on 02/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background").resizable().edgesIgnoringSafeArea(.all)
            VStack(alignment: .center){
                Spacer()
                VStack(alignment: .center, spacing: 30){
                    Image("profilePicture").resizable().aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 173, alignment: .topLeading)
                        .clipShape(Circle())
                        .shadow(color: .pink, radius: 5, x: 5, y: 5)
                    Text("Harshil Vadgama")
                        .font(.system(size:30))
                        .fontWeight(.bold)
                        .font(.system(.largeTitle))
                        .foregroundColor(.white)
                        .shadow(color: .pink, radius: 5, x: 2, y: 2)
                    Text("iOS | Front End Developer")
                        .foregroundColor(.white)
                        .font(.body)
                    HStack(spacing: 40){
                        Image(systemName: "heart.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "network")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "message.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "phone.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .foregroundColor(.white)
                    .frame(width: 250, height: 50, alignment: .center)
                    .shadow(color: .pink, radius: 5, x: 5, y: 5)
                }
                Spacer()
                VStack(alignment: .center, spacing: 30){
                    RoundedRectangle(cornerRadius: 120)
                        .frame(width: 200 , height:  50, alignment: .center)
                        .foregroundColor(.white)
                        .shadow(color: .pink, radius: 8, x: 5, y: 8)
                        .overlay(
                            Text("Follow")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .foregroundColor(.pink)
                        )
                    HStack(alignment: .center, spacing: 60){
                        VStack{
                            Text("200+")
                                .font(.title)
                                .foregroundColor(.pink)
                            Text("Projects")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        VStack{
                            Text("1735")
                                .font(.title)
                                .foregroundColor(.pink)
                            Text("Followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }.padding(.trailing)
                        VStack{
                            Text("231")
                                .font(.title)
                                .foregroundColor(.pink)
                            Text("Following")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                    Text("About You")
                        .font(.system(size: 30))
                        .font(.system(.largeTitle))
                        .foregroundColor(.black)
                    Text("I am an iOS Developer. Welcome to the series of iOS projects. Let's dive deeper and create some more exciting projects")
                        .font(.system(.body))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .lineLimit(4)
                        .opacity(0.7)
                }
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}
