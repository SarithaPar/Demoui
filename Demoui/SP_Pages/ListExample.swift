//
//  ListExample.swift
//  Demoui
//
//  Created by Saritha Parsoya on 2/20/24.
//

import SwiftUI

struct ListExample: View {
    
    @State private var fruits = [
        "Apple",
        "Banana",
        "Papaya",
        "Mango"
    ]
    
    
    var body: some View {
        NavigationView {
               List {
                   ForEach(fruits, id: \.self) { fruit in
                       Text(fruit)
                   }
                   .onDelete { fruits.remove(atOffsets: $0) }
                   .onMove { fruits.move(fromOffsets: $0, toOffset: $1) }
               }
               .navigationTitle("Fruits")
               .toolbar {
                   EditButton()
               }
           }
    }
}

#Preview {
    ListExample()
}
