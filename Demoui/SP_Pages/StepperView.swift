//
//  StepperView.swift
//  Demoui
//
//  Created by Saritha Parsoya on 2/20/24.
//

import SwiftUI

struct StepperView: View {
    @State private var value = 0
        let colors: [Color] = [.orange, .red, .gray, .blue,
                               .green, .purple, .pink]


        func incrementStep() {
            value += 1
            if value >= colors.count { value = 0 }
        }


        func decrementStep() {
            value -= 1
            if value < 0 { value = colors.count - 1 }
        }


        var body: some View {
            Stepper {
                Text("Value: \(value+1) Color: \(colors[value].description)")
            } onIncrement: {
                incrementStep()
            } onDecrement: {
                decrementStep()
            }
            .padding(5)
            .background(colors[value])
            .accessibilityIdentifier("ColorStepper")
        }
}

#Preview {
    StepperView()
}
