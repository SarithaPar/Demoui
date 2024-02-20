//
//  MyContentView.swift
//  Demoui
//
//  Created by Saritha Parsoya on 2/20/24.
//

import SwiftUI

struct DetailView: View {
    var number: Int
    
    var body: some View {
        Text("Detail View \(number)")
    }
}

struct MyContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("DetailView") {
                Text("DetailView")
            }
        }
    }
}

#Preview {
    ContentView()
}
