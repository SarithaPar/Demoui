//
//  SegmentView.swift
//  Demoui
//
//  Created by Saritha Parsoya on 2/20/24.
//

import SwiftUI

struct SegmentView: View {
    private var animals = ["🐶 Dog", "🐯 Tiger", "🐷 Pig"]
      var colors = [Color.yellow, Color.orange, Color.red, Color.purple]
      @State private var selectedAnimal = 0

      var body: some View {
          VStack {
              Picker(selection: $selectedAnimal, label: Text("animals")) {
                 ForEach(0 ..< animals.count) {
                  Text(self.animals[$0]).tag($0)
                 }
              }.pickerStyle(SegmentedPickerStyle())
              Text("Your choice: \(animals[selectedAnimal])")
          }
      }
}

#Preview {
    SegmentView()
}
