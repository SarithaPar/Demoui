//
//  PickerDate.swift
//  Demoui
//
//  Created by Saritha Parsoya on 2/20/24.
//

import SwiftUI

struct PickerDate: View {
    var myDateFormatter: DateFormatter {
            let formatter = DateFormatter()
            formatter.dateStyle = .long
            return formatter
        }

        @State var selectedDate = Date()

        var body: some View {
            VStack {
                DatePicker(selection: $selectedDate, displayedComponents: DatePickerComponents.hourAndMinute) {
                    Text("Date")
                }.accessibilityIdentifier("TimePicker")
                
                DatePicker(selection: $selectedDate, displayedComponents: DatePickerComponents.date) {
                    Text("Date")
                }.accessibilityIdentifier("DatePicker")

                DatePicker(selection: $selectedDate,in: Date()...Date().advanced(by: 7*24*3600), displayedComponents: [.date, .hourAndMinute]) {
                    Text("Date")
                }.accessibilityIdentifier("DateTimePicker")

                Text("Your Choice: \(selectedDate, formatter: myDateFormatter)")
                    .accessibilityIdentifier("DateLabel")
            }
        }
}

#Preview {
    PickerDate()
}
