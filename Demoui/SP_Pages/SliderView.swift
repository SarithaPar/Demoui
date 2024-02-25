//
//  SliderView.swift
//  Demoui
//
//  Created by Saritha Parsoya on 2/20/24.
//

import SwiftUI

struct SliderView: View {
    @State var temperature: Double = 0

    var body: some View {
        VStack {
            Text("Current Temp")
                .frame(alignment: .leading)
             Slider(value: $temperature)
                .accessibilityIdentifier("Slider_1")
             Slider(value: $temperature, in: -20...40)
                .accessibilityIdentifier("Slider_2")
             Slider(value: $temperature, in: -20...40) { (item) in
                 print(item)
             }
             HStack{
                 Image(systemName: "sun.max")

                 Slider(value: $temperature, in: -20...40, step: 2) { (item) in
                     print(item)
                 }.accentColor(.pink).colorInvert()
                     .accessibilityIdentifier("Slider_sun")
                 
                 
                Image(systemName: "sun.max.fill")
             }.padding()

             Text("The temperature is \(Int(temperature)).")
                .accessibilityIdentifier("TemperatureText")
        }
        .padding()
    }
}

#Preview {
    SliderView()
}
