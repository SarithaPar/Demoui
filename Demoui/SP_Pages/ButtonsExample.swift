//
//  ButtonsExample.swift
//  Demoui
//
//  Created by Saritha Parsoya on 2/20/24.
//

import SwiftUI

struct ButtonsExample: View {
    
    @State private var pastedText: String = ""
    
    var body: some View {
        VStack {
            Text("PasteButton")
            HStack {
                PasteButton(payloadType: String.self) { strings in
                    pastedText = strings[0]
                }
                Divider()
                Text(pastedText)
                Spacer()
            }
        }
    }
}

#Preview {
    ButtonsExample()
}
