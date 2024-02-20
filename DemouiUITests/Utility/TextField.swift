//
//  TextField.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/18/24.
//

import Foundation
import XCTest

class TextFieldBaseClass : DemouiUITestBase {
    
    func TextElement(searchText: String) -> XCUIElement? {
        let predicate = NSPredicate(format: "label CONTAINS[cd] %@", searchText)
//        let expectation = XCTNSPredicateExpectation(predicate: predicate, object: searchText)
//        wait(for: expectation, timeout: 5.0)
        let textQuery = app.staticTexts.containing(predicate)
        if  textQuery.count > 0 {
            return textQuery.firstMatch
        }
        return nil
    }
}
