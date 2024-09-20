//
//  ContentView.swift
//  SwiftUIWeatherApp
//
//  Created by Christian Teguim on 2024-09-20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                Text("Ottawa, ON")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding(10)
                Image(systemName:"cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                    .padding(.top, 30)
                
                Text("20°C")
                    .font(.system(size: 64, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding(.top, 10)
                    .padding(.bottom, 30)
                
                HStack(spacing: 25) {
                    VStack {
                        Text("TUE")
                            .font(.system(size: 19, weight: .semibold, design: .default))
                            .foregroundColor(.white)
                        Image(systemName:"cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        Text("17°")
                            .font(.system(size: 25, weight: .semibold, design: .default))
                            .foregroundColor(.white)
                        
                    }
                    VStack {
                        Text("WED")
                            .font(.system(size: 19, weight: .semibold, design: .default))
                            .foregroundColor(.white)
                        Image(systemName:"cloud.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        Text("17°")
                            .font(.system(size: 25, weight: .semibold, design: .default))
                            .foregroundColor(.white)
                    }
                    VStack {
                        Text("THU")
                            .font(.system(size: 19, weight: .semibold, design: .default))
                            .foregroundColor(.white)
                        Image(systemName:"sun.max.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        Text("17°")
                            .font(.system(size: 25, weight: .semibold, design: .default))
                            .foregroundColor(.white)
                    }
                    VStack {
                        Text("FRI")
                            .font(.system(size: 19, weight: .semibold, design: .default))
                            .foregroundColor(.white)
                        Image(systemName:"cloud.sun.rain.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        Text("15°")
                            .font(.system(size: 25, weight: .semibold, design: .default))
                            .foregroundColor(.white)
                    }
                    VStack {
                        Text("SAT")
                            .font(.system(size: 19, weight: .semibold, design: .default))
                            .foregroundColor(.white)
                        Image(systemName:"wind")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        Text("17°")
                            .font(.system(size: 25, weight: .semibold, design: .default))
                            .foregroundColor(.white)
                    }
                    
                }
        
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
