//
//  WheelPickerEg.swift
//  Demoui
//
//  Created by Saritha Parsoya on 2/24/24.
//

import SwiftUI

struct WheelPickerEg: View {
    @State private var number: Int = 21
    var body: some View {
        Picker("Your age", selection: $number) {
            ForEach(21...100, id:\.self) { number in
                let itemID = "number" + String(number)
                Text("\(number)")
                    .accessibilityIdentifier(itemID)
            }
            .accessibilityIdentifier("AgePicker")
        }
    }
}

#Preview {
    WheelPickerEg()
}
