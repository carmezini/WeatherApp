//
//  ContentView.swift
//  WeatherSwift
//
//  Created by Artur Carmezini on 09/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("darkBlue"), .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Florianópolis, SC")
                    .font(.system(size: 20, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 8) {
                    Image(systemName: "cloud.heavyrain.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                    Text("26°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                Spacer()
                HStack(spacing: 22) {
                    DayView(dayOfWeek: "SEG",
                            imageName: "cloud.heavyrain.fill",
                            temperatura: 22)
                    DayView(dayOfWeek: "TER",
                            imageName: "cloud.bolt.rain.fill",
                            temperatura: 22)
                    DayView(dayOfWeek: "QUA",
                            imageName: "cloud.sun.fill",
                            temperatura: 28)
                    DayView(dayOfWeek: "QUI",
                            imageName: "cloud.sun.rain.fill",
                            temperatura: 24)
                    DayView(dayOfWeek: "SEX",
                            imageName: "sun.max.fill",
                            temperatura: 32)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

struct DayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperatura: Int
    
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)

            Text("\(temperatura)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
