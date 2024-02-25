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
    
    func testDropDownExample_usingPicker() throws {
        WelcomePage().goToWelcomePage()
        app.buttons["dropdownExample"].tap()
        app.pickerWheels["FruitPicker"]
        
        
        // Assuming there's a dropdown element with an identifier
        let dropdownElement = app.pickerWheels["myDropdownIdentifier"]
        dropdownElement.adjust(toPickerWheelValue: "Option 2") // Select the desired option
        // You can also verify the selected value or perform other actions here
    }
    func testDatePicker() throws {
        WelcomePage().goToWelcomePage()
        app.buttons["DatePicker"].tap()
    }
    func testSlider() throws {
        WelcomePage().goToWelcomePage()
        app.buttons["slider"].tap()
    }
    func testStepperView() throws {
        WelcomePage().goToWelcomePage()
        app.buttons["stepper"].tap()
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
