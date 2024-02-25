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
                    .accessibilityIdentifier("SecurePassword")
                
                // Date Formatter
                Text("The time is: \(now, formatter: Self.dateFormatter)")
                    .font(.title3)
                    .accessibilityIdentifier("DateTime")
                
                // TextField
                Text("www.google.com")
                    .frame(width: 200, height: 30, alignment: .center)
                    .background(Color.orange)
                    .accessibilityIdentifier("URLText")
                
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .accessibilityIdentifier("SystemImage")
                
                Divider()
                Text("Other UIElements")
                    .accessibilityIdentifier("OtherElement")
                
                NavigationLink(destination: DropDown_11()) {
                    Text("DropDwon / Picker")
                        .accessibilityIdentifier("dropdownExample")
                }
                NavigationLink(destination: WheelPickerEg()) {
                    Text("Age Wheel Picker")
                        .accessibilityIdentifier("WheelPickerExample")
                }
                NavigationLink(destination: PickerDate()) {
                    Text("Date Picker")
                        .accessibilityIdentifier("DatePicker")
                }
                NavigationLink(destination: SliderView()) {
                    Text("Slider")
                        .accessibilityIdentifier("slider")
                }
                NavigationLink(destination: StepperView()) {
                    Text("Stepper View")
                        .accessibilityIdentifier("stepper")
                }
                NavigationLink(destination: SegmentView()) {
                    Text("Segment View")
                        .accessibilityIdentifier("segmentView")
                }
                NavigationLink(destination: SegmentView()) {
                    Text("Toggle View")
                        .accessibilityIdentifier("toggleview")
                }
                NavigationLink(destination: ListExample()) {
                    Text("List View")
                        .accessibilityIdentifier("listView")
                }
                NavigationLink(destination: ButtonsExample()) {
                    Text("Buttons View")
                        .accessibilityIdentifier("buttonView")
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    RegistrationPage(password: "")
}
