//
//  WelcomePageTest.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/24/24.
//

import XCTest


final class WelcomePageTest: DemouiUITestBase {

    func testDateText() throws {
        WelcomePage().goToWelcomePage()
        XCTAssertTrue(app.staticTexts["DateTime"].exists)
    }
    
    func testURL() throws {
        WelcomePage().goToWelcomePage()
        XCTAssertTrue(app.staticTexts["URLText"].exists)
    }
    
    func testImage() throws {
        WelcomePage().goToWelcomePage()
        XCTAssertTrue(app.images["SystemImage"].exists)
    }
    
    func testOtherUIElement() throws {
        WelcomePage().goToWelcomePage()
        XCTAssertTrue(app.staticTexts["OtherElement"].exists)
    }
    func testDropDownExample() throws {
        WelcomePage().goToWelcomePage()
        app.buttons["dropdownExample"].tap()
        app.buttons["FruitPicker"].waitForExistence(timeout: 5)
        app.buttons["FruitPicker"].tap()
        app.buttons["Banner"].tap()
        
        XCTAssertTrue(app.staticTexts["FruitSelection"].label == "Banner")
        
    }
    
    func testWheelPickerExample() throws {
        WelcomePage().goToWelcomePage()
        app.buttons["WheelPickerExample"].tap()
        
        // First tap on age button and then wheel picker will surface
        app.buttons["AgePicker"].tap()
        
        // tap on app button 39 and validate
        app.buttons["39"].tap()
        XCTAssertTrue(app.buttons["AgePicker"].label == "39", "Age selection and display is not the same")
        app.buttons["AgePicker"].tap()
        
        let lastNumber = app.buttons["100"]
        SwipeAction().scrollDownUntilElementFound(uiElement: lastNumber, maxSwipe: 6)
        
        XCTAssertTrue(lastNumber.exists)
        lastNumber.tap()
        
        XCTAssertTrue(app.buttons["AgePicker"].label == "100", "Max age 100 is not available")
        
        
        // Assuming there's a dropdown element with an identifier
        let dropdownElement = app.pickerWheels["myDropdownIdentifier"]
        dropdownElement.adjust(toPickerWheelValue: "Option 2") // Select the desired option
        // You can also verify the selected value or perform other actions here
    }

    func testDatePicker() throws {
        WelcomePage().goToWelcomePage()
        app.buttons["DatePicker"].tap()
        
        let timePicker = app.datePickers["TimePicker"]
        timePicker.tap()
        // time pickerWheel surfaces
        // Set time to 2:30 Pm
        app.pickerWheels.firstMatch.adjust(toPickerWheelValue: "2")

        // Click anywhere on screen to dismiss time picker
        app.tap()
        
        
        app.datePickers["DatePicker"].tap()
        // TODO - Validate date matches with choice
    }
    func testSlider() throws {
        WelcomePage().goToWelcomePage()
        app.buttons["slider"].tap()
        
        let sliderSun = app.sliders["Slider_sun"]
        // TODO - Set slider value
        let setTemperature = "30"
        sliderSun.adjust(toPickerWheelValue: setTemperature)
        
        // validate temperature is recorded as setvalue
        let temp = NSPredicate(format: "Any text CONTAINS[cd] %@", setTemperature)
        
        app.staticTexts["TemperatureText"].label
    }
    
 
    
    func testSegmentView() throws {
        WelcomePage().goToWelcomePage()
        app.buttons["segmentView"].tap()
    }
    func testToggleView() throws {
        WelcomePage().goToWelcomePage()
        app.buttons["toggleview"].tap()
    }
    func testListView() throws {
        WelcomePage().goToWelcomePage()
        app.buttons["listView"].tap()
    }
    func testButtonView() throws {
        WelcomePage().goToWelcomePage()
        app.buttons["buttonView"].tap()
    }

}
