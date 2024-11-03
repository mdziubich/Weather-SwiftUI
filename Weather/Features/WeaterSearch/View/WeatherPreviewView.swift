//
//  WeatherPreviewView.swift
//  Weather
//
//  Created by Małgorzata Dziubich on 03/11/2024.
//

import Foundation
import SwiftUI

struct WeatherPreviewView: View {

    var body: some View {
        HStack {
            VStack {
                Image(systemName: "cloud.sun.rain")
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay{
                        Circle().stroke(.white, lineWidth: 4)
                    }
                    .shadow(radius: 7)

                Text("Todays Weather")
                    .font(.title)
                Text("Hot")
                    .font(.subheadline)
            }
            Spacer()
            Text("18*")
                .font(.largeTitle)
                .lineLimit(1)

        }
        .padding()
    }
}

#Preview {
    WeatherPreviewView()
}
