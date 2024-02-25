//
//  DropDown_11.swift
//  Demoui
//
//  Created by Saritha Parsoya on 2/20/24.
//

import SwiftUI

struct DropDown_11: View {
    var fruits = ["Apple", "Banner", "Pear", "Watermelon"]
    var colors = [Color.blue, Color.orange, Color.red, Color.purple]
    @State private var selectedItem = 0
    
    var body: some View {
        VStack {
            
            Picker(selection: $selectedItem, label: Text("Fruits")) {
                ForEach(0 ..< fruits.count) {
                    Text(self.fruits[$0]).tag($0).foregroundColor(self.colors[$0])
                }
            }
            .accessibilityIdentifier("FruitPicker")
            
            HStack {
                Text("Your choice: ")
                Text("\(fruits[selectedItem])").foregroundColor(self.colors[selectedItem])
                    .accessibilityIdentifier("FruitSelection")
            }
        }
    }
}

#Preview {
    DropDown_11()
}
