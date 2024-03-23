//
//  Assertion.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 2/23/24.
//

import Foundation
import XCTest

class Assertion: XCTest {
   
    func testa() {
        let textsp = XCUIApplication().staticTexts["identifier"].firstMatch
        
        let a = XCUIApplication().children(matching: .staticText)
    }
}
