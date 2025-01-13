//
//  PredicateExample.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/25/24.
//

import XCTest

final class PredicateExample: DemouiUITestBase {

    override func setUpWithError() throws {
        let app = XCUIApplication()
        app.launch()
        continueAfterFailure = false
    }
    func testPredicateEg2() {
        
        // 1. Predicate where label is equal to a string
        app.staticTexts.containing(NSPredicate(format: "label == 'Registration'"))
        
        // 2. Predicate where label comtains a string
        app.staticTexts.containing(NSPredicate(format: "label CONTAINS 'Regis'"))
        
        // 3. Predicate where label contains string which is case-insensitive
        app.staticTexts.containing(NSPredicate(format: "label CONTAINS[c] 'Registra'"))
        
        
        // 4. Predicate where label matches a Regex
        app.staticTexts.containing(NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z]"))
        
        // 5. Predicate where label begins a specific substring
        app.staticTexts.containing(NSPredicate(format: "label BEGINSWITH %@", "Reg"))
        
        // 6. Predicate where label ends a specific substring "Character"
        app.staticTexts.containing(NSPredicate(format: "label ENDSWITH %@", "n"))
//        app.staticTexts.containing(NSPredicate(format: "label ENDSWITH %@", "ion"))
    }

    func testPredicateEx1() throws {
        let app = XCUIApplication()
        app.launch()
        
        let f1 = "color : red, number : 2"
        let color = "red"
        let colorPredicate = NSPredicate(format: "message CONTAINS %@", color)
        let redColorLabel = app.staticTexts.containing(colorPredicate)
    }

    func testUIElementQuery() {
        
//        app.children(matching: .staticText)
//        app.descendants(matching: .staticText)
//        app.staticTexts.containing(<#T##predicate: NSPredicate##NSPredicate#>)
//        
//        app.staticTexts.allElementsBoundByIndex[1]
//        app.staticTexts.count
//        app.staticTexts.element(boundBy: 2)
//        app.staticTexts.element(matching: <#T##NSPredicate#>)
//        
//        app.staticTexts.firstMatch.waitForExistence(timeout: 3)
//        
//        let slider = app.sliders.element.adjust(toNormalizedSliderPosition: 10.0)
//
//        let picker = app.pickerWheels.element.adjust(toPickerWheelValue: "monday")
//        
//        
//        app.staticTexts.element.click(forDuration: 2, thenDragTo: <#T##XCUIElement#>)
//        app.scroll(byDeltaX: 0.5, deltaY: 0.4)
//        
//        
//        XCUIProtectedResource.location
//        
//        let mainScreenScreenshot = XCUIScreen.main.screenshot()
//        let windowScreenshot = app.windows.firstMatch.screenshot()
//        
        
    }
    
  
    
    
}
