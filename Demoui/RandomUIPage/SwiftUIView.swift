//
//  SwiftUIView.swift
//  Demoui
//
//  Created by Saritha Parsoya on 2/18/24.
//

import SwiftUI

struct SwiftUIView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section (section.name) { 
                        ForEach(section.items) {item in
                            Text(item.name)
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .listStyle(GroupedListStyle())
        }
    }
}

#Preview {
    SwiftUIView()
}
