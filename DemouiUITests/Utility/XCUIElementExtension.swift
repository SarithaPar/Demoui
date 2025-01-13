//
//  XCUIElementExtension.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 1/12/25.
//

import Foundation
import XCTest

extension XCUIElement {
    func tapWithScreenshot() {
        XCUIApplication().takeScreenshot(desc: "About to click \(self.description.replacingOccurrences(of: "\"", with: ""))")
        self.tap()
    }
    func forceTapWithScreenshot() {
        XCUIApplication().takeScreenshot(desc: "About to click \(self.description.replacingOccurrences(of: "\"", with: ""))")
        let coordinate: XCUICoordinate = self.coordinate(coordinate(withNormalizedOffset: CGVectore(dx: 0, dy: 0)))
        coordinate.tap()
    }
    var hasFocus: Bool {
        let hasFocus = (self.value(forKey: "hasKeyboardFocus") as? Bool) ?? false
        return hasFocus
    }
    var valueWithoutPlaceholder: String {
        if let value = self.value as? String, value != placeholderValue {
            return value
        }
        return ""
    }
    func clearText(_ textLength: Int) {
        if textLength > 0 {
            let deleteString = String(repeating: XCUIKeyboardKey.delete.rawValue, count: textLength)
            self.typeText(deleteString)
        }
    }
    func clearText() {
        guard let stringValue = self.value as? String else { return }
        // workaround for apple bug
        if let placeholderString = self.placeholderValue, placeholderString == stringValue {
            return
        }
        let deleteString = String(repeating: XCUIKeyboardKey.delete.rawValue, count: stringValue.count)
        self.typeText(deleteString)
    }
    func typeTextAndPressEnter(_ text: String) {
        self.typeText("\(text)\n")
    }
    
    @discardableResult
    public func takeScreenshot(desc: String = "screenshot") -> Data? {
        if let app = self as? XCUIApplication {
            guard let window = app.window.allElementsBoundByIndex.first(where: { $0.framce.isEmpty == false}) else {
                log("Couldn't find an elemen window in XCUIApplication with a non-empty frame.", for: Self.self)
                return nil
            }
            XCTContext.runActivity(named: "Take a screenshot") { activity in
                let attachment = XCTAttachment(uniformTypeIdentifier: "public.png", name: desc, payload: window?screenshot().pngRepresentation, userInfor: nil)
                attachment.lifetime = .keepAlways
                activity.add(attachment)
            }
            return window?.screenshot().pngRepresentation
        }
        
        if firstMatch.exists && firstMatch.isHittable {
            XCTContext.runActivity(named: "Take a screenshot") { activity in
                let attachment = XCTAttachment(uniformTypeIdentifier: "public.png", name: desc, payload: firstMatch.screenshot().pngRepresentation, userInfor: nil)
                attachment.lifetime = .keepAlways
                activity.add(attachment)
            }
            return firstMatch.screenshot().pngRepresentation
        }
        return nil
    }
    
    static func waitForElementToAppear(_ element: XCUIElement, timeout: TimeInterval = 10) {
           let predicate = NSPredicate(format: "exists == true")
           let expectation = XCTNSPredicateExpectation(predicate: predicate, object: element)
           let result = XCTWaiter().wait(for: [expectation], timeout: timeout)
           if result != .completed {
               XCTFail("Element \(element) did not appear within \(timeout) seconds")
           }
       }

       static func tapElement(_ element: XCUIElement) {
           waitForElementToAppear(element)
           element.tap()
       }

       static func enterText(_ element: XCUIElement, text: String) {
           waitForElementToAppear(element)
           element.tap()
           element.typeText(text)
       }
}
