//
//  ScrollToElement.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/20/24.
//

import Foundation
import XCTest

class ScrollToElement : DemouiUITestBase {
    
    func scrollToElement(element: String) -> XCUIElement? {
        let elementToFind = app.staticTexts[element]
        while !elementToFind.exists {
            app.swipeUp() // Keep scrolling until the element is found
        }
        
        // If element found then return or return nil
        if elementToFind.exists {return elementToFind}
        return nil
    }
    
    func scrollToElementWithLimit(element: String, maxScrolls: Int = 10) -> XCUIElement? {
        let elementToFind = app.staticTexts[element]
        var currentScrolls = 0

        while !elementToFind.exists && currentScrolls < maxScrolls {
            app.swipeUp()
            currentScrolls += 1
        }

        XCTAssertTrue(elementToFind.exists, "The element should exist after scrolling")
        
        // If element found then return or return nil
        if elementToFind.exists { return elementToFind }
        return nil
    }

}
