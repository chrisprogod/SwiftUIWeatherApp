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
                    WeatherDayView(dayOfTheWeek: "TUE", imageName: "cloud.sun.fill", temperature: 17, spacing: 7)
                    WeatherDayView(dayOfTheWeek: "WED", imageName: "sun.max.fill", temperature: 25, fsize: 40, spacing: 12)
                    WeatherDayView(dayOfTheWeek: "THU", imageName: "cloud.fill", temperature: 16, fsize: 42, spacing: 11)
                    WeatherDayView(dayOfTheWeek: "FRI", imageName: "cloud.rain.fill", temperature: 14, fsize: 42, spacing: 11)
                    WeatherDayView(dayOfTheWeek: "SAT", imageName: "wind", temperature: 19, fsize: 40, spacing: 12)
                    
                    
                }
        
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfTheWeek: String
    var imageName: String
    var temperature: Int
    var fsize: CGFloat = 50
    var spacing: CGFloat = 10
    
    var body: some View {
        VStack(spacing: spacing ) {
            Text(dayOfTheWeek)
                .font(.system(size: 19, weight: .semibold, design: .default))
                .foregroundColor(.white)
            Image(systemName:imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: fsize, height: fsize)
            Text("\(temperature)°")
                .font(.system(size: 25, weight: .semibold, design: .default))
                .foregroundColor(.white)
            
        }
    }
}
