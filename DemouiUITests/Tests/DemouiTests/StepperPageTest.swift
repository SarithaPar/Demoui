//
//  StepperPageTest.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/25/24.
//

import Foundation
import XCTest

final class StepperPageTest: DemouiUITestBase {
    
    let colors = ["orange", "red", "gray", "blue", "green", "purple", "pink"]
    
    func testStepperView_1() throws {
        WelcomePage().goToWelcomePage()
        app.buttons["stepper"].tap()
//        app.steppers["ColorStepper"].tap()        // ERROR: Stepper is not hittable. it's increment and decrement button is hittable
        
        // validate color orange
        var colorLabel = app.staticTexts.containing(NSPredicate(format: "label CONTAINS 'orange'"))
        XCTAssertTrue(colorLabel.count == 1)
        
        // Tap on increment, the stepper color label should update to  red
        app.buttons["ColorStepper-Increment"].tap()
        colorLabel = app.staticTexts.containing(NSPredicate(format: "label CONTAINS 'red'"))
        XCTAssertTrue(colorLabel.count == 1)
        
        app.buttons["ColorStepper-Increment"].tap()
        colorLabel = app.staticTexts.containing(NSPredicate(format: "label CONTAINS 'gray'"))
        XCTAssertTrue(colorLabel.count == 1)
        
        app.buttons["ColorStepper-Increment"].tap()
        colorLabel = app.staticTexts.containing(NSPredicate(format: "label CONTAINS 'blue'"))
        XCTAssertTrue(colorLabel.count == 1)
        
        app.buttons["ColorStepper-Increment"].tap()
        colorLabel = app.staticTexts.containing(NSPredicate(format: "label CONTAINS 'green'"))
        XCTAssertTrue(colorLabel.count == 1)
        
        app.buttons["ColorStepper-Increment"].tap()
        colorLabel = app.staticTexts.containing(NSPredicate(format: "label CONTAINS 'purple'"))
        XCTAssertTrue(colorLabel.count == 1)
        
        app.buttons["ColorStepper-Increment"].tap()
        colorLabel = app.staticTexts.containing(NSPredicate(format: "label CONTAINS 'pink'"))
        XCTAssertTrue(colorLabel.count == 1)
        
        app.buttons["ColorStepper-Increment"].tap()
        colorLabel = app.staticTexts.containing(NSPredicate(format: "label CONTAINS 'orange'"))
        XCTAssertTrue(colorLabel.count == 1)
    }
    
    func testStepperView_IncrementLoop() throws {
        WelcomePage().goToWelcomePage()
        app.buttons["stepper"].tap()
        
        var colorLabel: XCUIElementQuery
        
        // validate color orange
        for i in colors {
            colorLabel = app.staticTexts.containing(NSPredicate(format: "label CONTAINS %@", i))
            XCTAssertTrue(colorLabel.count == 1)
            app.buttons["ColorStepper-Increment"].tap()
        }
    }
    
    func testStepperView_Decrement() throws {
        WelcomePage().goToWelcomePage()
        app.buttons["stepper"].tap()
        
        // validate color orange
        var colorLabel = app.staticTexts.containing(NSPredicate(format: "label CONTAINS 'orange'"))
        XCTAssertTrue(colorLabel.count == 1)
        
        app.buttons["ColorStepper-Decrement"].tap()
        colorLabel = app.staticTexts.containing(NSPredicate(format: "label CONTAINS 'pink'"))
        XCTAssertTrue(colorLabel.count == 1)
        
        app.buttons["ColorStepper-Decrement"].tap()
        colorLabel = app.staticTexts.containing(NSPredicate(format: "label CONTAINS 'pink'"))
        XCTAssertTrue(colorLabel.count == 1)
        
    }
}
