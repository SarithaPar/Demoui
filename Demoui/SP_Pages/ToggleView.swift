//
//  ToggleView.swift
//  Demoui
//
//  Created by Saritha Parsoya on 2/20/24.
//

import SwiftUI

struct ToggleView: View {
    @State var showNotification = true

        var body: some View {
            VStack {
                Text("Show Notification: ")
                + Text("\(self.showNotification.description)")
                    .foregroundColor(.green)
                    .bold()
                    
                
                Toggle(isOn: $showNotification) {
                    Text("Show notification:")
                }.padding()
            }
        }
}

#Preview {
    ToggleView()
}
