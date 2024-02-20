//
//  RegistrationPage.swift
//  Demoui
//
//  Created by Saritha Parsoya on 2/18/24.
//

import SwiftUI

struct RegistrationPage: View {

    @State var password: String
    
    // Date formatter
    var now = Date()
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome")
                SecureField("Passowrd", text: $password)
                
                // Date Formatter
                Text("The time is: \(now, formatter: Self.dateFormatter)")
                    .font(.title3)
                
                // TextField
                Text("www.google.com")
                    .frame(width: 200, height: 30, alignment: .center)
                    .background(Color.orange)
                
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                
                Divider()
                Text("Other UIElements")
                
                NavigationLink(destination: DropDown_11()) {
                    Text("DropDwon / Picker")
                }
                NavigationLink(destination: PickerDate()) {
                    Text("Date Picker")
                }
                NavigationLink(destination: SliderView()) {
                    Text("Slider")
                }
                NavigationLink(destination: StepperView()) {
                    Text("Stepper View")
                }
                NavigationLink(destination: SegmentView()) {
                    Text("Segment View")
                }
                NavigationLink(destination: SegmentView()) {
                    Text("Toggle View")
                }
                NavigationLink(destination: ListExample()) {
                    Text("List View")
                }
                NavigationLink(destination: ButtonsExample()) {
                    Text("Buttons View")
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    RegistrationPage(password: "")
}
