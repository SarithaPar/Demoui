//
//  AllInOne.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 3/26/24.
//

import XCTest

final class AllInOne: DemouiUITestBase {
   
    
    func testSplashScreen() {
        XCTAssert(app.staticTexts["Hello"].exists)
        
        // wait for element to appear
        let splash = app.staticTexts["Hello"]
        splash.waitForExistence(timeout: 5)
        
        app.debugDescription    // pring debugDescription
        
        // Interactions
        app.buttons["a"].tap()
        
        let textFld = app.textFields["tf"]
        textFld.tap()
        textFld.typeText("Hello")
        
        // Alert
        app.alerts["Success"].buttons["Dismiss"].tap()
        
        // System interruption - using UIInteruption Handler
        addUIInterruptionMonitor(withDescription: "Location dialog") { (alert) in
            alert.buttons["Allow"].tap()
            return true
        }
        
        // Slider - use normalize value
        app.sliders.element.adjust(toNormalizedSliderPosition: 0.5)
        
        // Picker - Single wheels
        app.pickerWheels.element.adjust(toPickerWheelValue: "Color -Red")
        
        // Picker - muliple wheels -  have id for each wheels
        let dateWheel = NSPredicate(format: "label BEGINSWITH 'DatePicker'")
        let datePicker = app.pickerWheels.element(matching: dateWheel)
        datePicker.adjust(toPickerWheelValue: "Today")
        
        // webview - tap on link
        app.links["google.com"].tap()
        
        // View assertion
        // View always return true. Thus assert any UIElement on that Window frame exists
        let window = app.windows.element(boundBy: 0)
        let element = app.buttons["Hola"]
        XCTAssert(window.frame.contains(element.frame))
        
        // Tableview cell - long press & DragTo
        let cell_1 = app.buttons["move 1"]
        let cell_3 = app.buttons["move 3"]
        cell_1.press(forDuration: 0.5, thenDragTo: cell_3)
        
        // Pull to refresh - using XCUICooridnate
        let start = app.coordinate(withNormalizedOffset: CGVector(dx: 100, dy: 50))
        let finish = app.coordinate(withNormalizedOffset: CGVector(dx: 100, dy: 250))
        start.press(forDuration: 2, thenDragTo: finish)
        
        // Hardware Button
        XCUIDevice.shared.press(XCUIDevice.Button.home)
    }
}
